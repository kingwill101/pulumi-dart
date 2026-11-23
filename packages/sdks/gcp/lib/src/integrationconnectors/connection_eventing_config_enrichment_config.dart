// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionEventingConfigEnrichmentConfig {
  /// Append ACL to the event.
  final pulumi.Input<bool?>? appendAcl;

  /// Creates a new [ConnectionEventingConfigEnrichmentConfig].
  /// [appendAcl] Append ACL to the event.
  const ConnectionEventingConfigEnrichmentConfig({
    this.appendAcl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appendAcl': ?appendAcl,
    };
  }

  factory ConnectionEventingConfigEnrichmentConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionEventingConfigEnrichmentConfig(
      appendAcl: (() { final guardedValue = map['appendAcl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
