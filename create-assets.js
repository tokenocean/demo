import { config } from "./src/lib/config.js";
import https from "https";
import fs from "fs";

const download = (url, dest, successCb, errorCb) => {
  const file = fs.createWriteStream(dest);
  https
    .get(url, (response) => {
      response.pipe(file);
      file.on("finish", () => {
        file.close(successCb);
      });
    })
    .on("error", (err) => {
      if (errorCb) errorCb(err.message);
    });
};

const downloadAsPromise = (url, localDestination) => {
  return new Promise((resolve, reject) => {
    download(
      url,
      localDestination,
      () => {
        console.log(`Successfully downloaded ${url} as ${localDestination}`);
        resolve();
      },
      reject
    );
  });
};

const run = async () => {
  await downloadAsPromise(config.assets.logo, "./static/logo.png");
  await downloadAsPromise(config.assets.footer_logo, "./static/footer_logo.png");
  await downloadAsPromise(config.assets.favicon, "./static/favicon.ico");
  await downloadAsPromise(config.assets.splash_image, "./static/splash.png");
};

run();
