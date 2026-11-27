final: prev:

# dolphin but it uses nearest neighbour scaling in image previews (niceys when u deal with a lot of pixel art)
prev.kdePackages.dolphin.overrideAttrs (prevAttrs: {
  patches = [
    ./kpixmapmodifier-nearestneighbourscaling.patch
    # might need to swtich to this when dolphin updates in nixpkgs
    # ./kpixmapmodifier-nearestneighbourscaling-latest.patch
  ];
})
