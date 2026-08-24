// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamDownloadDefault {
  /// Indicates the progress as a percentage between 0 and 100.
  final pulumi.Input<double?>? percentComplete;
  /// The status of a generated download.
  /// Available values: "ready", "inprogress", "error".
  final pulumi.Input<String?>? status;
  /// The URL to access the generated download.
  final pulumi.Input<String?>? url;

  /// Creates a new [StreamDownloadDefault].
  /// [percentComplete] Indicates the progress as a percentage between 0 and 100.
  /// [status] The status of a generated download.
  /// [url] The URL to access the generated download.
  const StreamDownloadDefault({
    this.percentComplete,
    this.status,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentComplete': ?percentComplete,
      'status': ?status,
      'url': ?url,
    };
  }

  factory StreamDownloadDefault.fromMap(Map<String, dynamic> map) {
    return StreamDownloadDefault(
      percentComplete: (() { final guardedValue = map['percentComplete']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
