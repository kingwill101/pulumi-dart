// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesChannelSourcePipeSecLabel {
  /// Configures the label for the security attributes of the UNIX domain socket.
  final pulumi.Input<String>? label;
  /// Determines whether to skip the label check for the security label in the UNIX socket.
  final pulumi.Input<String>? labelSkip;
  /// Sets the model type for the security label in the UNIX domain socket configuration.
  final pulumi.Input<String>? model;
  /// Enables or disables relabeling for the security label in the UNIX domain socket.
  final pulumi.Input<String>? relabel;

  /// Creates a new [DomainDevicesChannelSourcePipeSecLabel].
  /// [label] Configures the label for the security attributes of the UNIX domain socket.
  /// [labelSkip] Determines whether to skip the label check for the security label in the UNIX socket.
  /// [model] Sets the model type for the security label in the UNIX domain socket configuration.
  /// [relabel] Enables or disables relabeling for the security label in the UNIX domain socket.
  DomainDevicesChannelSourcePipeSecLabel({
    this.label,
    this.labelSkip,
    this.model,
    this.relabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': ?label,
      'labelSkip': ?labelSkip,
      'model': ?model,
      'relabel': ?relabel,
    };
  }

  factory DomainDevicesChannelSourcePipeSecLabel.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannelSourcePipeSecLabel(
      label: map['label'] == null ? null : (map['label']! as String).input(),
      labelSkip: map['labelSkip'] == null ? null : (map['labelSkip']! as String).input(),
      model: map['model'] == null ? null : (map['model']! as String).input(),
      relabel: map['relabel'] == null ? null : (map['relabel']! as String).input(),
    );
  }
}

