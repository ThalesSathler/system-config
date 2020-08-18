nnoremap <leader>tm :TestNearest<CR>
nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>tp :TestSuite<CR>

let test#java#maventest#options = '-B --quiet'
let test#javascript#jest#options = '--env=node'
let test#javascript#mocha#executable = 'NODE_ENV=test npm t'
let test#strategy = "basic"
