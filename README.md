# Reproduce `ERR_REQUIRE_ESM`

```
make run

# in different terminal

make test
```

```
{
  "errorType": "Error",
  "errorMessage": "require() of ES Module /var/task/node_modules/@exodus/bytes/encoding-lite.js from /var/task/node_modules/html-encoding-sniffer/lib/html-encoding-sniffer.js not supported.\nInstead change the require of encoding-lite.js in /var/task/node_modules/html-encoding-sniffer/lib/html-encoding-sniffer.js to a dynamic import() which is available in all CommonJS modules.",
  "trace": [
    "Error [ERR_REQUIRE_ESM]: require() of ES Module /var/task/node_modules/@exodus/bytes/encoding-lite.js from /var/task/node_modules/html-encoding-sniffer/lib/html-encoding-sniffer.js not supported.",
    "Instead change the require of encoding-lite.js in /var/task/node_modules/html-encoding-sniffer/lib/html-encoding-sniffer.js to a dynamic import() which is available in all CommonJS modules.",
    "    at TracingChannel.traceSync (node:diagnostics_channel:328:14)",
    "    at Object.<anonymous> (/var/task/node_modules/html-encoding-sniffer/lib/html-encoding-sniffer.js:2:41)"
  ]
}
```

Rel: https://github.com/ExodusOSS/bytes/issues/13
Rel: https://github.com/jsdom/jsdom/issues/4000
