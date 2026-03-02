// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_smartcard_passthrough_pipe_sec_label.dart';

class DomainDevicesSmartcardPassthroughPipe {
  /// Sets the path for the pipe source in the EGD backend.
  final pulumi.Input<String> path;
  /// Configures security label settings for the pipe source in the EGD backend.
  final pulumi.Input<List<DomainDevicesSmartcardPassthroughPipeSecLabel>>? secLabels;

  /// Creates a new [DomainDevicesSmartcardPassthroughPipe].
  /// [path] Sets the path for the pipe source in the EGD backend.
  /// [secLabels] Configures security label settings for the pipe source in the EGD backend.
  DomainDevicesSmartcardPassthroughPipe({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesSmartcardPassthroughPipeSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesSmartcardPassthroughPipeSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesSmartcardPassthroughPipe.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSmartcardPassthroughPipe(
      path: (map['path'] as String).input(),
      secLabels: map['secLabels'] == null ? null : (pulumi.Input.decodeList<DomainDevicesSmartcardPassthroughPipeSecLabel>(map['secLabels'], (value) => DomainDevicesSmartcardPassthroughPipeSecLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

