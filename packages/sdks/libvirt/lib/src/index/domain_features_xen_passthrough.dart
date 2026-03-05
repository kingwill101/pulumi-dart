// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesXenPassthrough {
  /// Sets the mode of the passthrough feature, which affects how devices are exposed to the guest.
  final pulumi.Input<String>? mode;
  /// Configures the state of the passthrough feature, indicating its activation status.
  final pulumi.Input<String>? state;

  /// Creates a new [DomainFeaturesXenPassthrough].
  /// [mode] Sets the mode of the passthrough feature, which affects how devices are exposed to the guest.
  /// [state] Configures the state of the passthrough feature, indicating its activation status.
  DomainFeaturesXenPassthrough({
    this.mode,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'state': ?state,
    };
  }

  factory DomainFeaturesXenPassthrough.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesXenPassthrough(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

