function yup --description 'Update all packages'
    yay -Syu
end

function yse --description 'Search for a package'
    yay -Ss $argv
end

function yin --description 'Install a package'
    yay -S $argv
end

function yrm --description 'Remove a package'
    yay -Rs $argv
end

function ycl --description 'Clean package cache'
    yay -Sc
end

function yor --description 'List orphan packages'
    yay -Qdt
end

function yorrm --description 'Remove orphan packages'
    yay -Rns (yay -Qdtq)
end

