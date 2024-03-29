cask "arnp2022" do
  version :latest
  sha256 :no_check

  url "https://updates.information-factory.com/egov/arnp/ARnP2022_macos.dmg",
      verified: "updates.information-factory.com/egov"
  name "ARnP2022"
  desc "Steuererklärung 2022 für natürliche Personen"
  homepage "https://www.ar.ch/verwaltung/departement-finanzen/steuerverwaltung/"

  installer script: {
    executable: "Steuer Appenzell Ausserrhoden 2022 nP Installationsprogramm.app/Contents/MacOS/JavaApplicationStub",
  }

  uninstall script: {
    executable: "/Applications/Steuer Appenzell Ausserrhoden 2022 nP/Steuer Appenzell Ausserrhoden 2021 nP Deinstallationsprogramm.app/Contents/MacOS/JavaApplicationStub",
  }
end
