const legalDocs = (d, s, id) => {
  const tjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  const js = d.createElement(s);
  js.id = id;
  js.src = 'https://app.termly.io/embed-policy.min.js';
  tjs.parentNode.insertBefore(js, tjs);
};

legalDocs(document, 'script', 'termly-jssdk');
