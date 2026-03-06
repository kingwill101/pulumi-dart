// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceCustomDomain resources.
class ServiceCustomDomainState {
  /// Specifies the custom domain name of the SignalR Custom Domain. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Please ensure the custom domain name is included in the Subject Alternative Names of the selected SignalR Custom Certificate.
  final pulumi.Input<String>? domainName;
  /// Specifies the name of the SignalR Custom Domain. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the SignalR Custom Certificate ID of the SignalR Custom Domain. Changing this forces a new resource to be created.
  final pulumi.Input<String>? signalrCustomCertificateId;
  /// Specifies the SignalR ID of the SignalR Custom Domain. Changing this forces a new resource to be created.
  final pulumi.Input<String>? signalrServiceId;

  /// Creates a new [ServiceCustomDomainState].
  /// [domainName] Specifies the custom domain name of the SignalR Custom Domain. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the SignalR Custom Domain. Changing this forces a new resource to be created.
  /// [signalrCustomCertificateId] Specifies the SignalR Custom Certificate ID of the SignalR Custom Domain. Changing this forces a new resource to be created.
  /// [signalrServiceId] Specifies the SignalR ID of the SignalR Custom Domain. Changing this forces a new resource to be created.
  const ServiceCustomDomainState({
    this.domainName,
    this.name,
    this.signalrCustomCertificateId,
    this.signalrServiceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'name': ?name,
      'signalrCustomCertificateId': ?signalrCustomCertificateId,
      'signalrServiceId': ?signalrServiceId,
    };
  }

  factory ServiceCustomDomainState.fromMap(Map<String, dynamic> map) {
    return ServiceCustomDomainState(
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signalrCustomCertificateId: (() { final guardedValue = map['signalrCustomCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signalrServiceId: (() { final guardedValue = map['signalrServiceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

