Pod::Spec.new do |s|
  s.name                    = 'PFObjC'
  s.version                 = '0.0.4'
  s.summary                 = '对系统API进行简单封装，实现常用功能'
  s.homepage                = 'https://github.com/PFei-He/PFObjC'
  s.license                 = { :type => 'MIT', :file => 'LICENSE' }
  s.author                  = { 'PFei-He' => '498130877@qq.com' }
  s.platform                = :ios, '7.0'
  s.ios.deployment_target   = '7.0'
  s.source                  = { :git => 'https://github.com/PFei-He/PFObjC.git', :tag => s.version, :submodules => true }
  s.source_files            = 'PFObjC/PFObjC.h'
  s.public_header_files     = 'PFObjC/PFObjC.h'
  s.requires_arc            = true

  s.subspec 'Catagory' do |ss|
    ss.source_files = 'PFObjC/Catagory/{NSString,UIView}+PFObjC.{h,m}'
  end

  s.subspec 'Framework' do |ss|
    ss.source_files = 'PFObjC/Framework/PF{File,Model,QRCode,Scanner,Time}.{h,m}'
  end
end
