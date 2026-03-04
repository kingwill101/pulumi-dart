// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details for an outcome with a SUCCESS outcome summary. LINT.IfChange
class SuccessDetail {
  /// If a native process other than the app crashed.
  final pulumi.Input<bool>? otherNativeCrash;

  /// Creates a new [SuccessDetail].
  /// [otherNativeCrash] If a native process other than the app crashed.
  SuccessDetail({this.otherNativeCrash});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'otherNativeCrash': ?otherNativeCrash};
  }

  factory SuccessDetail.fromMap(Map<String, dynamic> map) {
    return SuccessDetail(
      otherNativeCrash: (() {
        final guardedValue = map['otherNativeCrash'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
