{ ... }:

{
  # audio
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  # ssh
  services.openssh.enable = true;

  # printing
  services.printing.enable = true;
}
