const chokidar = require('chokidar');
const { exec } = require('child_process');

console.log('Watching for file changes...');

chokidar.watch('.', {
  ignored: /(^|[\/\\])(\.git|\.dart_tool|build|node_modules)/,
  persistent: true,
  ignoreInitial: true
}).on('change', (path) => {
  console.log(`File changed: ${path}`);

  exec('git add . && git commit -m "Auto commit changes"', (error, stdout, stderr) => {
    if (error) {
      console.error(`exec error: ${error}`);
      return;
    }
    console.log(`stdout: ${stdout}`);
    if (stderr) console.error(`stderr: ${stderr}`);
  });
});
