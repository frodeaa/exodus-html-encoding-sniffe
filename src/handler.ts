import * as htmlEncodingSniffer from "html-encoding-sniffer";

const html = Buffer.from(`<!doctype html>`);

export const handler = async () => {
    const encoding = htmlEncodingSniffer(html, {});
    console.log(encoding);
};
