final: prev:

# systemd with the `OK` status message replaced with `WAWA` (or `WAGWAG` (or anything else))
# ty µ :revolving_hearts:
prev.systemd.overrideAttrs (prevAttrs: {
  pname = "systemd-wawa";
  patches = prevAttrs.patches ++ [
    # ./wawa.patch
    ./wagwag.patch
  ];
})