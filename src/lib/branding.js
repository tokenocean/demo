import { config } from "./config";

const defaultBranding = {
  // Add here defaults
  projectName: "Default",
  superUserName: "default",
  urls: {
    base: "default.io",
    www: "www.default.io",
    protocol: "https://default.io",
    external: {
      twitter: "https://twitter.com/default",
      telegram: "https://t.me/default",
      blog: "https://blog.default.io/",
    },
  },

  meta: {
    title: "Default",
    keywords: "Bitcoin Liquid NFT",
    description: "Digital assets on the bitcoin liquid network.",
    image: "https://default.io/splash.png",
    url: "https://default.io/",
    twitter: {
      card: "summary_large_image",
      creator: "@default",
      site: "@default",
    },
  },

  emails: {
    support: "support@default.com",
  },
};
// TODO: Will get nftItemName and nftItemNamePlural from config after dev in admin function
const brandingByConfig = {
  ...defaultBranding,
  ...config,
  ...{ nftItemName: "demo item", nftItemNamePlural: "demo items" },
};

export default brandingByConfig;
