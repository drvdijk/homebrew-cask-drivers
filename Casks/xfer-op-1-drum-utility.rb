cask 'xfer-op-1-drum-utility' do
  version '1.02'
  sha256 'ad7acd315f65a3ee359dc5fab5e6554d588cc9e212d2416648471669b128dab4'

  url 'https://xferrecords.com/product_downloads/34/freeware'
  name 'OP-1 Drum Utility'
  homepage 'https://xferrecords.com/freeware'

  app "OP1DrumUtilityOSX_#{version.no_dots}/OP-1 Drum Utility.app"
  audio_unit_plugin 'Op1DrumUtil.component'
  vst_plugin 'Op1DrumUtil.vst'

  preflight do
    vst = "#{staged_path}/OP1DrumUtilityOSX_#{version.no_dots}/OP-1 Drum Utility.app/Contents/Resources/Op1DrumUtil.vst"
    FileUtils.cp_r(vst, staged_path)
    FileUtils.cp_r(vst, "#{staged_path}/Op1DrumUtil.component")
  end
end
