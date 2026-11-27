{ pkgs, inputs, ... }:

{
  # jetbrains ides
  environment.systemPackages = with inputs.nix-jetbrains-plugins.lib; [
    # rider
    (buildIdeWithPlugins pkgs "rider" [
      "com.intellij.resharper.HeapAllocationsViewer"
    ])
  ];
}