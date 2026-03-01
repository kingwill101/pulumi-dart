// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesChannelSourceFileSecLabel {
  /// Configures the label for the security attributes of the UNIX domain socket.
  final String? label;
  /// Determines whether to skip the label check for the security label in the UNIX socket.
  final String? labelSkip;
  /// Sets the model type for the security label in the UNIX domain socket configuration.
  final String? model;
  /// Enables or disables relabeling for the security label in the UNIX domain socket.
  final String? relabel;

  /// Creates a new [DomainDevicesChannelSourceFileSecLabel].
  /// [label] Configures the label for the security attributes of the UNIX domain socket.
  /// [labelSkip] Determines whether to skip the label check for the security label in the UNIX socket.
  /// [model] Sets the model type for the security label in the UNIX domain socket configuration.
  /// [relabel] Enables or disables relabeling for the security label in the UNIX domain socket.
  DomainDevicesChannelSourceFileSecLabel({
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

  factory DomainDevicesChannelSourceFileSecLabel.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannelSourceFileSecLabel(
      label: map['label'] == null ? null : map['label'] as String,
      labelSkip: map['labelSkip'] == null ? null : map['labelSkip'] as String,
      model: map['model'] == null ? null : map['model'] as String,
      relabel: map['relabel'] == null ? null : map['relabel'] as String,
    );
  }
}

