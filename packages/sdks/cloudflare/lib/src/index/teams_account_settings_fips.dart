// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsAccountSettingsFips {
  /// Enforce cipher suites and TLS versions compliant with FIPS 140-2.
  final pulumi.Input<bool?>? tls;

  /// Creates a new [TeamsAccountSettingsFips].
  /// [tls] Enforce cipher suites and TLS versions compliant with FIPS 140-2.
  const TeamsAccountSettingsFips({
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tls': ?tls,
    };
  }

  factory TeamsAccountSettingsFips.fromMap(Map<String, dynamic> map) {
    return TeamsAccountSettingsFips(
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
