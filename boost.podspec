Pod::Spec.new do |spec|
    spec.name              			= 'boost'
	# there is "boost" pod in public spec repo and proper ordering spec repos when pushing podspec to spec repo is not honored, 
	# when client of pod is installing pod version from public spec repo is taken, so we add 'YKL' to the version
    spec.version           			= '1.59.0.1'
    spec.summary           			= 'Boost provides free peer-reviewed portable C++ source libraries.'
    spec.homepage          			= 'http://www.boost.org'            		
    spec.author            			= { 'Name' => 'eklishevich@gmail.com' }
    spec.license           			= { :type => "MIT", :file => "LICENSE.txt" }
    spec.platform          			= :ios
    spec.source            			= { :git => 'https://github.com/yklishevich/Boost.git' }
	spec.vendored_libraries 		= "build-ios/libboost.a"
	spec.platform          			= :ios
	spec.ios.deployment_target 		= '8.0'
	# do not specify source files otherwise error will be when compiling
	spec.source_files				= 'boost/**/*.{h,hpp,ipp}'
	spec.preserve_paths        		= 'boost/**/*.{h,hpp,ipp}'
	spec.header_mappings_dir		= 'boost'
	# HEADER_SEARCH_PATHS is needed to find 'ipp' files
	spec.user_target_xcconfig 		= { 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/boost/boost"' }
	
	#TODO: make subspecs for different parts of boost
end