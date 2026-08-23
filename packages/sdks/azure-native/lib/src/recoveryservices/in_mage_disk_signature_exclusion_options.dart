// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Guest disk signature based disk exclusion option when doing enable protection of virtual machine in InMage provider.
class InMageDiskSignatureExclusionOptions {
  /// The guest signature of disk to be excluded from replication.
  final pulumi.Input<String>? diskSignature;

  /// Creates a new [InMageDiskSignatureExclusionOptions].
  /// [diskSignature] The guest signature of disk to be excluded from replication.
  const InMageDiskSignatureExclusionOptions({
    this.diskSignature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSignature': ?diskSignature,
    };
  }

  factory InMageDiskSignatureExclusionOptions.fromMap(Map<String, dynamic> map) {
    return InMageDiskSignatureExclusionOptions(
      diskSignature: (() { final guardedValue = map['diskSignature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
