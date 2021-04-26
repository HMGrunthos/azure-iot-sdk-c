#!/bin/sh
cmake ../..  -DCMAKE_TOOLCHAIN_FILE=../arm-gcc-toolchain.cmake -DCMAKE_INSTALL_PREFIX=$HOME/src/Work/STM32Workspace/usr -DcompileOption_C="--sysroot=/home/sam/src/Work/STM32Workspace -Wno-error=char-subscripts" -Dskip_samples=ON -Drun_valgrind:BOOL=0 -Drun_e2e_tests:BOOL=OFF -Drun_sfc_tests:BOOL=-sfc-tests -Drun_longhaul_tests=OFF -Duse_amqp:BOOL=OFF -Duse_http:BOOL=OFF -Duse_mqtt:BOOL=ON -Ddont_use_uploadtoblob:BOOL=ON -Drun_unittests:BOOL=OFF -Dbuild_python:STRING=OFF -Dno_logging:BOOL=ON -Duse_installed_dependencies=OFF -Dbuild_as_dynamic=OFF -Duse_prov_client:BOOL=OFF -Duse_tpm_simulator:BOOL=OFF -Duse_edge_modules=OFF -Drun_e2e_openssl_engine_tests=OFF -Dskip_samples=OFF -Dbuild_provisioning_service_client=OFF -Dbuild_service_client=OFF -Duse_custom_heap=OFF -Duse_baltimore_cert=OFF -Duse_microsoftazure_de_cert=OFF -Duse_portal_azure_cn_cert=OFF -Duse_mbedtls=ON -Duse_openssl=OFF -Duse_sample_trusted_cert=OFF -Dnuget_e2e_tests=OFF -Wno-dev -Duse_condition=OFF -Duse_socketio=OFF
cmake --build . --verbose
