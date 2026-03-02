// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_task_spec_container_spec_privileges_credential_spec.dart';
import 'service_task_spec_container_spec_privileges_se_linux_context.dart';

class ServiceTaskSpecContainerSpecPrivileges {
  /// CredentialSpec for managed service account (Windows only)
  final pulumi.Input<ServiceTaskSpecContainerSpecPrivilegesCredentialSpec>? credentialSpec;
  /// SELinux labels of the container
  final pulumi.Input<ServiceTaskSpecContainerSpecPrivilegesSeLinuxContext>? seLinuxContext;

  /// Creates a new [ServiceTaskSpecContainerSpecPrivileges].
  /// [credentialSpec] CredentialSpec for managed service account (Windows only)
  /// [seLinuxContext] SELinux labels of the container
  ServiceTaskSpecContainerSpecPrivileges({
    this.credentialSpec,
    this.seLinuxContext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialSpec': ?pulumi.Input.mapOptionalInputValue<ServiceTaskSpecContainerSpecPrivilegesCredentialSpec, Map<String, dynamic>>(credentialSpec, (value) => value.toMap()),
      'seLinuxContext': ?pulumi.Input.mapOptionalInputValue<ServiceTaskSpecContainerSpecPrivilegesSeLinuxContext, Map<String, dynamic>>(seLinuxContext, (value) => value.toMap()),
    };
  }

  factory ServiceTaskSpecContainerSpecPrivileges.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecContainerSpecPrivileges(
      credentialSpec: map['credentialSpec'] == null ? null : (ServiceTaskSpecContainerSpecPrivilegesCredentialSpec.fromMap((map['credentialSpec'] as Map).cast<String, dynamic>())).input(),
      seLinuxContext: map['seLinuxContext'] == null ? null : (ServiceTaskSpecContainerSpecPrivilegesSeLinuxContext.fromMap((map['seLinuxContext'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

