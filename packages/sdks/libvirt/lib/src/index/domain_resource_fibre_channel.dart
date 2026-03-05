// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainResourceFibreChannel {
  /// Sets the application ID for the Fibre Channel resource.
  final pulumi.Input<String> appId;

  /// Creates a new [DomainResourceFibreChannel].
  /// [appId] Sets the application ID for the Fibre Channel resource.
  DomainResourceFibreChannel({
    required this.appId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
    };
  }

  factory DomainResourceFibreChannel.fromMap(Map<String, dynamic> map) {
    return DomainResourceFibreChannel(
      appId: pulumi.Input.fromValue(map['appId'] as String),
    );
  }
}

