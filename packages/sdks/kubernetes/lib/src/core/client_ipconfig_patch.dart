// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ClientIPConfig represents the configurations of Client IP based session affinity.
class ClientIPConfigPatch {
  /// timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be &gt;0 && &lt;=86400(for 1 day) if ServiceAffinity == "ClientIP". Default value is 10800(for 3 hours).
  final pulumi.Input<int>? timeoutSeconds;

  /// Creates a new [ClientIPConfigPatch].
  /// [timeoutSeconds] timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be &gt;0 && &lt;=86400(for 1 day) if ServiceAffinity == "ClientIP". Default value is 10800(for 3 hours).
  const ClientIPConfigPatch({
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory ClientIPConfigPatch.fromMap(Map<String, dynamic> map) {
    return ClientIPConfigPatch(
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
