// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainSysInfoSmbiosOemStrings {
  /// Defines individual entries for the OEM strings in the SMBIOS configuration.
  final pulumi.Input<List<String>>? entries;

  /// Creates a new [DomainSysInfoSmbiosOemStrings].
  /// [entries] Defines individual entries for the OEM strings in the SMBIOS configuration.
  DomainSysInfoSmbiosOemStrings({this.entries});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'entries': ?entries};
  }

  factory DomainSysInfoSmbiosOemStrings.fromMap(Map<String, dynamic> map) {
    return DomainSysInfoSmbiosOemStrings(
      entries: (() {
        final guardedValue = map['entries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
