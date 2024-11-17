const express = require('express');
const os = require('node:os');

const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
  const hardwareInfo = `
    <html>
      <head>
        <title>Hardware Info</title>
      </head>
      <body>
        <h1>Hardware Information</h1>
        <ul>
          <li><strong>Platform:</strong> ${os.platform()}</li>
          <li><strong>Architecture:</strong> ${os.arch()}</li>
          <li><strong>CPUs:</strong> ${os.cpus().map(cpu => cpu.model).join(', ')}</li>
          <li><strong>Total Memory:</strong> ${(os.totalmem() / 1024 / 1024 / 1024).toFixed(2)} GB</li>
          <li><strong>Free Memory:</strong> ${(os.freemem() / 1024 / 1024 / 1024).toFixed(2)} GB</li>
          <li><strong>Uptime:</strong> ${(os.uptime() / 60 / 60).toFixed(2)} hours</li>
        </ul>
      </body>
    </html>
  `;
  res.send(hardwareInfo);
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
