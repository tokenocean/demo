<script>
  import { browser } from "$app/env";
  import { err } from "$lib/utils";
  import { query } from "$lib/api";
  import Fa from "svelte-fa";
  import { faQuestionCircle } from "@fortawesome/free-regular-svg-icons";
  import { page } from "$app/stores";
  import { tick } from "svelte";
  import Select from "svelte-select";
  import { onMount } from "svelte";
  import { ToggleSwitch } from "$comp";

  export let artwork;
  export let title;

  let input, items, loading, timer;

  const debounce = (v) => {
    loading = true;
    artwork.title = v;
    artwork.ticker = "";
    clearTimeout(timer);
    timer = setTimeout(() => {
      title = v;
      loading = false;
    }, 550);
  };

  onMount(() => {
    if (artwork.title) input.value = artwork.title;
    query(`query { tags { tag } }`)
      .then(
        (res) =>
          (items = [...new Set(res.tags.map((t) => t.tag))].map((value) => ({
            value,
            label: value,
          })))
      )
      .catch(err);
  });

  $: focus($page);
  export let focus = (p) =>
    browser && p && tick().then(() => input && input.select());

  $: value = artwork.tags.map(({ tag }) => ({
    value: tag,
    label: tag,
  }));

  let handle = ({ detail }) => {
    artwork.tags = detail.map(({ value: tag }) => ({ tag }));
  };
</script>

<form class="flex flex-col w-full mb-6 mt-20" on:submit autocomplete="off">
  <div class="flex flex-col mb-6">
    <input
      class="border-0 border-b-2"
      style="border-radius: 0 !important"
      placeholder="What's the propery title?"
      on:input={({ target: { value } }) => debounce(value)}
      bind:this={input}
    />
  </div>
  <div class="flex flex-col mb-6">
    <label for="description">Description</label>
    <textarea
      class="border-2 p-2"
      id="description"
      placeholder="How would you describe it?"
      bind:value={artwork.description}
    />
  </div>
  <div class="flex flex-col mb-6">
    <label for="test_text">Test text field</label>
    <input
      class="border-2 p-2"
      id="test_text"
      placeholder="Test text field..."
      bind:value={artwork.metadata.test_text}
    />
  </div>
  <div class="flex flex-col mb-6">
    <label for="maintenance_fee">Test number field</label>
    <input
      class="border-2 p-2"
      type="number"
      min="0"
      max="100000"
      step="1"
      placeholder="Test number field..."
      bind:value={artwork.metadata.test_number}
    />
  </div>
  {#if !artwork.id}
    <div class="flex flex-col mb-6">
      <div class="mb-0">
        <label for="ticker" class="flex">
          <div class="mr-2">Ticker</div>
          <div class="mt-1 mb-0">
            <span class="tooltip">
              <i class="text-midblue text-xl">
                <Fa icon={faQuestionCircle} />
              </i>
              <span class="tooltip-text bg-gray-100 shadow ml-4 rounded"
                >The ticker is a short 3-5 character identifier for your asset
                that you'll see in other wallets and explorers.</span
              >
            </span>
          </div>
        </label>
      </div>
      <input
        id="ticker"
        class="w-1/2 border-2 p-2"
        bind:value={artwork.ticker}
        maxlength="5"
      />
    </div>
  {/if}
  <div class="flex flex-col mb-6">
    <label for="tags"
      >Tags
      <span class="text-gray-400">(e.g. fireplace, waterfront, etc)</span
      ></label
    >
    <Select
      id="tags"
      {items}
      isMulti={true}
      placeholder="Tags"
      on:select={handle}
      {value}
      isCreatable={true}
    />
  </div>
  <div class="flex">
    <button type="submit" class="primary-btn">Submit</button>
  </div>
</form>

<style>
  .tooltip {
    cursor: pointer;
  }
  .tooltip .tooltip-text {
    display: none;
    padding: 15px;
    position: absolute;
    z-index: 100;
    width: 300px;
    font-style: normal;
  }
  .tooltip:hover .tooltip-text {
    display: block;
  }
  input[type="checkbox"]:checked {
    appearance: none;
    border: 5px solid #fff;
    outline: 2px solid #2596be;
    background-color: #2596be;
    padding: 2px;
    border-radius: 0;
  }

  input,
  textarea {
    @apply rounded-lg;
  }
</style>
