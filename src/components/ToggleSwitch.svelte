<script>
  export let id;
  export let label;
  export let checked = false;
  export let dualColor = false;
</script>

<div class="relative inline-block w-10 mr-2 align-middle select-none ease-in">
  <input
    type="checkbox"
    name="toggle"
    {id}
    class={`toggle-checkbox absolute p-0 block w-6 h-6 rounded-full bg-white border-4 appearance-none cursor-pointer outline-none ${
      dualColor ? "dualColor" : ""
    }`}
    bind:checked
    on:change
  />
  <label
    for={id}
    class="toggle-label block overflow-hidden h-6 rounded-full bg-gray-300 cursor-pointer"
  />
</div>
<label for={id} class="cursor-pointer">{label}</label>

<style>
  .toggle-checkbox.dualColor {
    border: 1px solid #52b9ff;
  }

  .toggle-checkbox:checked {
    @apply right-0;
    border: 1px solid #2596be;
    right: 0;
  }

  .toggle-checkbox.dualColor + .toggle-label {
    background: #52b9ff;
  }

  .toggle-checkbox:checked + .toggle-label {
    background: #2596be;
  }
</style>
