// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook.dart';

/// Resources created in user's repository for the source-control.
class RepositoryResourceInfo {
  /// The webhook object created for the source-control.
  final pulumi.Input<Webhook>? webhook;

  /// Creates a new [RepositoryResourceInfo].
  /// [webhook] The webhook object created for the source-control.
  const RepositoryResourceInfo({
    this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'webhook': ?pulumi.Input.mapOptionalInputValue<Webhook, Map<String, dynamic>>(webhook, (value) => value.toMap()),
    };
  }

  factory RepositoryResourceInfo.fromMap(Map<String, dynamic> map) {
    return RepositoryResourceInfo(
      webhook: (() { final guardedValue = map['webhook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Webhook.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
