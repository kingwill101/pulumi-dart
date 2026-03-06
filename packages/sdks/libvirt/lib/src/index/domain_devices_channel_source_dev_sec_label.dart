// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesChannelSourceDevSecLabel {
  /// Configures the label for the security attributes of the UNIX domain socket.
  final pulumi.Input<String>? label;
  /// Determines whether to skip the label check for the security label in the UNIX socket.
  final pulumi.Input<String>? labelSkip;
  /// Sets the model type for the security label in the UNIX domain socket configuration.
  final pulumi.Input<String>? model;
  /// Enables or disables relabeling for the security label in the UNIX domain socket.
  final pulumi.Input<String>? relabel;

  /// Creates a new [DomainDevicesChannelSourceDevSecLabel].
  /// [label] Configures the label for the security attributes of the UNIX domain socket.
  /// [labelSkip] Determines whether to skip the label check for the security label in the UNIX socket.
  /// [model] Sets the model type for the security label in the UNIX domain socket configuration.
  /// [relabel] Enables or disables relabeling for the security label in the UNIX domain socket.
  const DomainDevicesChannelSourceDevSecLabel({
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

  factory DomainDevicesChannelSourceDevSecLabel.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannelSourceDevSecLabel(
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labelSkip: (() { final guardedValue = map['labelSkip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relabel: (() { final guardedValue = map['relabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

