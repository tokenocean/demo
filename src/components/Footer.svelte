<script>
  import branding from "$lib/branding";
  import Fa from "svelte-fa";
  import {
    faFacebook,
    faInstagramSquare,
    faTelegramPlane,
    faDiscord,
    faTwitter,
  } from "@fortawesome/free-brands-svg-icons";
  import { faRss } from "@fortawesome/free-solid-svg-icons";

  const date = new Date();
  const year = date.getFullYear();
</script>

<div class="bg-black">
  <div class="h-24 bg-white w-full" />
  <div class="container footer mx-auto flex flex-wrap text-white pt-12">
    <div
      class="flex flex-col text-sm w-full lg:w-2/4 mb-10 order-last lg:order-first"
    >
      <a href="/" class="w-48 text-3xl font-bold">
        <img src="/footer_logo.png" alt="logo" class="w-36 lg:w-48" />
        <!-- {branding.projectName} -->
      </a>

      <p class="mt-4">&copy;{year} {branding.projectName}</p>
      <div class="mt-12">
        <p class="pb-3">Powered by:</p>
        <img
          src="/btc-logo.svg"
          alt="bitcoin logo"
          class="pb-3 text-white w-32"
        />
        <img src="/liquid_logo.svg" alt="liquid network logo" />
      </div>
    </div>
    <div class="w-full lg:w-1/4 mb-10">
      <h4 class="font-bold mb-4">Follow Us</h4>
      <ul class="list-none">
        <li class="mb-2">
          <a
            target="_blank"
            href={branding.urls.external.twitter}
            class="flex items-center"
            ><div class="w-6 mr-1"><Fa icon={faTwitter} /></div>
            Twitter</a
          >
        </li>

        <li class="mb-2">
          <a
            target="_blank"
            href={branding.urls.external.instagram}
            class="flex items-center"
            ><div class="w-6 mr-1"><Fa icon={faInstagramSquare} /></div>
            Instagram</a
          >
        </li>
      </ul>
    </div>
    <div class="w-full lg:w-1/4 mb-10">
      <h4 class="font-bold mb-4">Help</h4>
      <ul class="list-none">
        <li class="mb-2"><a href="/help">Help</a></li>
        <li class="mb-2">
          <a href="https://blockstream.com/liquid/">The Liquid Network</a>
        </li>
        <li class="mb-2"><a href="/privacy-policy">Privacy Policy</a></li>
        <li class="mb-2">
          <a href="/terms-and-conditions">Terms of Service</a>
        </li>
      </ul>
    </div>
  </div>
</div>
