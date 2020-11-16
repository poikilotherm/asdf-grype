% ASDF_INSTALL_VERSION: "0.3.0"
% ASDF_INSTALL_PATH: "$(mktemp)"

Describe "Grype Installation"
  Include "bin/install"

  Describe "get_download_url()"
    It "creates a Tarball URL on Linux"
      Mock uname
        echo "Linux"
      End
      When call get_download_url "$ASDF_INSTALL_VERSION"
      The output should eq "https://github.com/anchore/grype/releases/download/v0.3.0/grype_0.3.0_linux_amd64.tar.gz"
    End
    It "creates a ZIP file URL on Mac OS X"
      Mock uname
        echo "Darwin"
      End
      When call get_download_url "$ASDF_INSTALL_VERSION"
      The output should eq "https://github.com/anchore/grype/releases/download/v0.3.0/grype_0.3.0_darwin_amd64.zip"
    End
  End


  Describe "get_arch()"
    It "prints the OS on Linux lowercase"
      Mock uname
        echo "Linux"
      End
      When call get_arch
      The output should eq "linux"
    End
    It "prints the OS on Mac OS X lowercase"
      Mock uname
        echo "Darwin"
      End
      When call get_arch
      The output should eq "darwin"
    End
  End
End
