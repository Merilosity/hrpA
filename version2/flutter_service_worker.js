'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "2c667018d2666056d47a31e4275e0323",
"index.html": "f203b5173b3b6937710af2dacb13ead3",
"/": "f203b5173b3b6937710af2dacb13ead3",
"main.dart.js": "cb2a36dd2c83b03e0cd963b85ef60d6b",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "e1a5fd0b2a839f43bcd88fd8b2eb58e6",
"assets/AssetManifest.json": "cb3e67545f4efb9952a9c2e26bb25231",
"assets/NOTICES": "75ef613d77c60dda731d784cd42d2b73",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "65989c257aee7f32b64b7a3ffe6061bc",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "955ac865243063243d376583e6f9f453",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/assets/images/H_AI-4.png": "d37a27e396da7bba0d470a54890729d4",
"assets/assets/images/H_AI.png": "5ad04b5f40c1f7965925da6aed03ad9b",
"assets/assets/images/greyBox.png": "6efeb98154437cd3aa57c7d6c56f1478",
"assets/assets/images/Generated-Result-Banner-Small.png": "7743e282d15957b300fdaeda1587a19d",
"assets/assets/images/H_AI-3.png": "bd6f1cc51d606044088563fa71aebc44",
"assets/assets/images/Analysed-Sample-Banner.png": "d362e659b57da3a07f9e320680a675e2",
"assets/assets/images/H_AI-2.png": "74bc08e93512ecdf01790fefbd9a3626",
"assets/assets/images/B-Analyse-Pressed.png": "1df4c8bf092b5049f06d42813a9fafe0",
"assets/assets/images/B-Generate-Report.png": "4fd479bd55538d54779c0c9db4859b83",
"assets/assets/images/H_AI-1.png": "5ad04b5f40c1f7965925da6aed03ad9b",
"assets/assets/images/lightBoxLine.png": "0acd67522ec94d0362c9d68ec5fc8103",
"assets/assets/images/P_AI-4.png": "d2e399c9ebf6d3f363a72849395615a0",
"assets/assets/images/B-Hematology.png": "c967620dbb0e6083875589e3194d976e",
"assets/assets/images/B-Pathology-Pressed.png": "ec0d8572590fe9a73260446aa586f449",
"assets/assets/images/P_AI-1.png": "8810356785fea8a52164a67347d22ef5",
"assets/assets/images/B-Radiology-Disabled.png": "f74bd1a3560d65313d3a036307fe2781",
"assets/assets/images/B-Analyse.png": "e86c7a61b16f77380a3815cdccddb5d4",
"assets/assets/images/P_AI-2.png": "393b644fc185ccc75df9076c6b8422c7",
"assets/assets/images/P_AI-3.png": "c4d8215e24fbf7ba3c9b9ccec33254b6",
"assets/assets/images/B-Pathology-Disabled.png": "1fea5ff288ab848c52663436276fab1f",
"assets/assets/images/info-R-3.png": "1684d08483a5739bd94a3b7a2e92307f",
"assets/assets/images/info-P-1.png": "ed08ddabb9c8c44b1b29078e8310c665",
"assets/assets/images/B-Continue.png": "b78d74b81a4daf3e9d27ce1b493c4ec4",
"assets/assets/images/R-4.png": "e94e7610ffe2f6b8c453e3424b6522b0",
"assets/assets/images/Generated-Report-Banner.png": "d4931801e35ffcf6ca48f26be3489a54",
"assets/assets/images/info-R-2.png": "76776ee8b4504fea764392aa4f07f54d",
"assets/assets/images/B-Radiology-Pressed.png": "589140a2f2897b43673029df2e438f9b",
"assets/assets/images/info-P-2.png": "eb166dd04b6538b41c3f1f9c09ddf11f",
"assets/assets/images/B-Try-another-Sample.png": "de777d40752c2a8d15f6fc8bc2d92f08",
"assets/assets/images/P-4.png": "dc1bb4af06cbe00798a79522355fc0a0",
"assets/assets/images/B-Question.png": "d56108b3f55d00d1c94497ee66ec6d9b",
"assets/assets/images/info-P-3.png": "eb166dd04b6538b41c3f1f9c09ddf11f",
"assets/assets/images/info-R-1.png": "84c7a59cf73dbad3afbaa3b31a002926",
"assets/assets/images/R-2.png": "6aeaf9d265ffe264ed05077bf1195476",
"assets/assets/images/P-1.png": "231185c48e2ddb5febd2b78557ec6581",
"assets/assets/images/R-3.png": "32436052346ad1f3d87289abf6356d60",
"assets/assets/images/openaiLogo.png": "b3874dfb99735a3994d7fd6c3aaebce4",
"assets/assets/images/Additional-Information-Banner.png": "23145b6fb5de0ad4e239ac80e6237508",
"assets/assets/images/info-R-4.png": "4b15ea7d6c899743392a062fd1df21c5",
"assets/assets/images/info-P-4.png": "700d821270397f48c07db78f41c60d4b",
"assets/assets/images/B-Continue-to-Survey.png": "454df2af1eba26e8df4e21ae3b483f81",
"assets/assets/images/R-1.png": "915e5cf3fad554239be865e7a4dc4fd0",
"assets/assets/images/P-3.png": "b17109a747df9faeabdb742d743e87a3",
"assets/assets/images/P-2.png": "102a816c55d56de03de6ef17d532d677",
"assets/assets/images/darkBoxLine.png": "30117d6940fb7b7d0b286dfd294cf8bd",
"assets/assets/images/B-Radiology.png": "8d232f58c3a047ff25dd26e0e430f81b",
"assets/assets/images/R_AI-2.png": "26e0af7ae1b4637417df7c0946b6f5cd",
"assets/assets/images/R_AI-3.png": "ce887e773d2ceccba2754fa89814e9ba",
"assets/assets/images/info-H-1.png": "3f61bfb30fc883492e5f18a8a97f3d34",
"assets/assets/images/B-Hematology-Disabled.png": "2cc591c0a661d395a361376cde21beed",
"assets/assets/images/S-4.png": "d24f65fb0a10d0f33e6d4e5b34d90b89",
"assets/assets/images/info-H-3.png": "029a9a062538fc442f05c5db46db641e",
"assets/assets/images/R_AI-1.png": "1f4184eb9159889fa8ccd93a279e7133",
"assets/assets/images/info-H-2.png": "8539d0c534aa9f649febf26e335f98ee",
"assets/assets/images/S-1.png": "2522868053c1dc6010af4160097ec943",
"assets/assets/images/R_AI-4.png": "4880ddc9f058a92da1e9e24f1265305f",
"assets/assets/images/B-Pathology.png": "4fb7ce8f0a342ce71e69d324c0a56475",
"assets/assets/images/B-Hematology-Pressed.png": "890ee64c65e7227acd1b0f7c68b17070",
"assets/assets/images/S-2.png": "7caf3d5203c810e2ff164d80871f1c72",
"assets/assets/images/Generated-Result-Banner.png": "679363813d6b996fb2c4e3e5394a2031",
"assets/assets/images/info-H-4.png": "7e18a110cb2c6a0e471570ed28ea0c57",
"assets/assets/images/S-3.png": "093645a1777fc93550c8f871f944832c",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
