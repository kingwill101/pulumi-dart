// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlaybookActionProperties {
  /// The resource id of the playbook resource.
  final pulumi.Input<String> logicAppResourceId;
  /// The tenant id of the playbook resource.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [PlaybookActionProperties].
  /// [logicAppResourceId] The resource id of the playbook resource.
  /// [tenantId] The tenant id of the playbook resource.
  PlaybookActionProperties({
    required this.logicAppResourceId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logicAppResourceId': logicAppResourceId,
      'tenantId': ?tenantId,
    };
  }

  factory PlaybookActionProperties.fromMap(Map<String, dynamic> map) {
    return PlaybookActionProperties(
      logicAppResourceId: pulumi.Input.fromValue(map['logicAppResourceId'] as String),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

