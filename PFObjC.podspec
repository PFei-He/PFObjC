Pod::Spec.new do |s|
  s.name                    = 'PFObjC'
  s.version                 = '0.4.1'
  s.summary                 = '对系统API进行简单封装，实现常用功能'
  s.homepage                = 'https://github.com/PFei-He/PFObjC'
  s.license                 = { :type => 'MIT', :file => 'LICENSE' }
  s.author                  = { 'PFei-He' => '498130877@qq.com' }
  s.platform                = :ios, '7.0'
  s.ios.deployment_target   = '7.0'
  s.source                  = { :git => 'https://github.com/PFei-He/PFObjC.git', :tag => s.version }
  s.source_files            = 'PFObjC/{NSDate,NSString,NSTimer,UIView}+PFObjC.{h,m}', 'PFObjC/PF{File,Model,ObjCDebug,QRCode,Scanner,Time}.{h,m}', 'PFObjC/PFConfigure.h', 'PFObjC/PFObjC.h'
  s.public_header_files     = 'PFObjC/{NSDate,NSString,NSTimer,UIView}+PFObjC.h', 'PFObjC/PF{Configure,File,Model,ObjCDebug,QRCode,Scanner,Time}.h', 'PFObjC/PFObjC.h'
  s.requires_arc            = true
end
