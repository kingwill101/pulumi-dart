// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_vhost_user_pipe_sec_label.dart';

class DomainOsNvRamSourceVhostUserPipe {
  /// Sets the path for the pipe source in the EGD backend.
  final pulumi.Input<String> path;
  /// Configures security label settings for the pipe source in the EGD backend.
  final pulumi.Input<List<DomainOsNvRamSourceVhostUserPipeSecLabel>>? secLabels;

  /// Creates a new [DomainOsNvRamSourceVhostUserPipe].
  /// [path] Sets the path for the pipe source in the EGD backend.
  /// [secLabels] Configures security label settings for the pipe source in the EGD backend.
  DomainOsNvRamSourceVhostUserPipe({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainOsNvRamSourceVhostUserPipeSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainOsNvRamSourceVhostUserPipeSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainOsNvRamSourceVhostUserPipe.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceVhostUserPipe(
      path: (map['path'] as String).input(),
      secLabels: map['secLabels'] == null ? null : (pulumi.Input.decodeList<DomainOsNvRamSourceVhostUserPipeSecLabel>(map['secLabels'], (value) => DomainOsNvRamSourceVhostUserPipeSecLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

