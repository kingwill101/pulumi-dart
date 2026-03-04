// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SessionTemplateJupyterSession {
  /// Display name, shown in the Jupyter kernelspec card.
  final pulumi.Input<String>? displayName;

  /// Kernel to be used with Jupyter interactive session.
  /// Possible values are: `PYTHON`, `SCALA`.
  final pulumi.Input<String>? kernel;

  /// Creates a new [SessionTemplateJupyterSession].
  /// [displayName] Display name, shown in the Jupyter kernelspec card.
  /// [kernel] Kernel to be used with Jupyter interactive session.
  SessionTemplateJupyterSession({this.displayName, this.kernel});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'displayName': ?displayName, 'kernel': ?kernel};
  }

  factory SessionTemplateJupyterSession.fromMap(Map<String, dynamic> map) {
    return SessionTemplateJupyterSession(
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kernel: (() {
        final guardedValue = map['kernel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
