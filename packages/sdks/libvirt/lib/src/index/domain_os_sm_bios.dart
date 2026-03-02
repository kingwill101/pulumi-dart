// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsSmBios {
  /// Sets the mode for the SMBIOS configuration.
  final pulumi.Input<String> mode;

  /// Creates a new [DomainOsSmBios].
  /// [mode] Sets the mode for the SMBIOS configuration.
  DomainOsSmBios({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainOsSmBios.fromMap(Map<String, dynamic> map) {
    return DomainOsSmBios(
      mode: (map['mode'] as String).input(),
    );
  }
}

