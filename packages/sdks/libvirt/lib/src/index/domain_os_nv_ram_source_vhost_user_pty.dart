// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_vhost_user_pty_sec_label.dart';

class DomainOsNvRamSourceVhostUserPty {
  /// Sets the path for the PTY source in the EGD backend.
  final pulumi.Input<String> path;
  /// This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  final pulumi.Input<List<DomainOsNvRamSourceVhostUserPtySecLabel>>? secLabels;

  /// Creates a new [DomainOsNvRamSourceVhostUserPty].
  /// [path] Sets the path for the PTY source in the EGD backend.
  /// [secLabels] This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  DomainOsNvRamSourceVhostUserPty({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainOsNvRamSourceVhostUserPtySecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainOsNvRamSourceVhostUserPtySecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainOsNvRamSourceVhostUserPty.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceVhostUserPty(
      path: (map['path'] as String).input(),
      secLabels: map['secLabels'] == null ? null : (pulumi.Input.decodeList<DomainOsNvRamSourceVhostUserPtySecLabel>(map['secLabels']!, (value) => DomainOsNvRamSourceVhostUserPtySecLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

