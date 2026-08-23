// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainBhyveCommandlineArg {
  /// Sets one additional argument token passed to the bhyve process.
  ///
  /// See: &lt;https://libvirt.org/drvbhyve.html&gt;
  final pulumi.Input<String> value;

  /// Creates a new [DomainBhyveCommandlineArg].
  /// [value] Sets one additional argument token passed to the bhyve process.
  const DomainBhyveCommandlineArg({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory DomainBhyveCommandlineArg.fromMap(Map<String, dynamic> map) {
    return DomainBhyveCommandlineArg(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
