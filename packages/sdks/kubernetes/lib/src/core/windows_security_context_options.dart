// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// WindowsSecurityContextOptions contain Windows-specific options and credentials.
class WindowsSecurityContextOptions {
  /// GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.
  final pulumi.Input<String>? gmsaCredentialSpec;

  /// GMSACredentialSpecName is the name of the GMSA credential spec to use.
  final pulumi.Input<String>? gmsaCredentialSpecName;

  /// HostProcess determines if a container should be run as a 'Host Process' container. All of a Pod's containers must have the same effective HostProcess value (it is not allowed to have a mix of HostProcess containers and non-HostProcess containers). In addition, if HostProcess is true then HostNetwork must also be set to true.
  final pulumi.Input<bool>? hostProcess;

  /// The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  final pulumi.Input<String>? runAsUserName;

  /// Creates a new [WindowsSecurityContextOptions].
  /// [gmsaCredentialSpec] GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.
  /// [gmsaCredentialSpecName] GMSACredentialSpecName is the name of the GMSA credential spec to use.
  /// [hostProcess] HostProcess determines if a container should be run as a 'Host Process' container. All of a Pod's containers must have the same effective HostProcess value (it is not allowed to have a mix of HostProcess containers and non-HostProcess containers). In addition, if HostProcess is true then HostNetwork must also be set to true.
  /// [runAsUserName] The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  WindowsSecurityContextOptions({
    this.gmsaCredentialSpec,
    this.gmsaCredentialSpecName,
    this.hostProcess,
    this.runAsUserName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gmsaCredentialSpec': ?gmsaCredentialSpec,
      'gmsaCredentialSpecName': ?gmsaCredentialSpecName,
      'hostProcess': ?hostProcess,
      'runAsUserName': ?runAsUserName,
    };
  }

  factory WindowsSecurityContextOptions.fromMap(Map<String, dynamic> map) {
    return WindowsSecurityContextOptions(
      gmsaCredentialSpec: (() {
        final guardedValue = map['gmsaCredentialSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gmsaCredentialSpecName: (() {
        final guardedValue = map['gmsaCredentialSpecName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostProcess: (() {
        final guardedValue = map['hostProcess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      runAsUserName: (() {
        final guardedValue = map['runAsUserName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
