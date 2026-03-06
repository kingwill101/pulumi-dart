// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstancePscConfigServiceAttachment {
  /// (Output)
  /// Status of the service attachment connection.
  final pulumi.Input<String>? connectionStatus;
  /// Fully qualified domain name that will be used in the private DNS record created for the service attachment.
  final pulumi.Input<String>? localFqdn;
  /// URI of the service attachment to connect to.
  final pulumi.Input<String>? targetServiceAttachmentUri;

  /// Creates a new [InstancePscConfigServiceAttachment].
  /// [connectionStatus] (Output)
  /// [localFqdn] Fully qualified domain name that will be used in the private DNS record created for the service attachment.
  /// [targetServiceAttachmentUri] URI of the service attachment to connect to.
  const InstancePscConfigServiceAttachment({
    this.connectionStatus,
    this.localFqdn,
    this.targetServiceAttachmentUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionStatus': ?connectionStatus,
      'localFqdn': ?localFqdn,
      'targetServiceAttachmentUri': ?targetServiceAttachmentUri,
    };
  }

  factory InstancePscConfigServiceAttachment.fromMap(Map<String, dynamic> map) {
    return InstancePscConfigServiceAttachment(
      connectionStatus: (() { final guardedValue = map['connectionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localFqdn: (() { final guardedValue = map['localFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetServiceAttachmentUri: (() { final guardedValue = map['targetServiceAttachmentUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

