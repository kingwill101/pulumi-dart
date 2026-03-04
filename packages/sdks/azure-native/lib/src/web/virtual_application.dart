// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_directory.dart';

/// Virtual application in an app.
class VirtualApplication {
  /// Physical path.
  final pulumi.Input<String>? physicalPath;

  /// &lt;code&gt;true&lt;/code&gt; if preloading is enabled; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool>? preloadEnabled;

  /// Virtual directories for virtual application.
  final pulumi.Input<List<VirtualDirectory>>? virtualDirectories;

  /// Virtual path.
  final pulumi.Input<String>? virtualPath;

  /// Creates a new [VirtualApplication].
  /// [physicalPath] Physical path.
  /// [preloadEnabled] &lt;code&gt;true&lt;/code&gt; if preloading is enabled; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [virtualDirectories] Virtual directories for virtual application.
  /// [virtualPath] Virtual path.
  VirtualApplication({
    this.physicalPath,
    this.preloadEnabled,
    this.virtualDirectories,
    this.virtualPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'physicalPath': ?physicalPath,
      'preloadEnabled': ?preloadEnabled,
      'virtualDirectories':
          ?pulumi.Input.mapOptionalInputValue<
            List<VirtualDirectory>,
            List<Map<String, dynamic>>
          >(
            virtualDirectories,
            (value) =>
                pulumi.Input.encodeList<VirtualDirectory, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'virtualPath': ?virtualPath,
    };
  }

  factory VirtualApplication.fromMap(Map<String, dynamic> map) {
    return VirtualApplication(
      physicalPath: (() {
        final guardedValue = map['physicalPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preloadEnabled: (() {
        final guardedValue = map['preloadEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      virtualDirectories: (() {
        final guardedValue = map['virtualDirectories'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VirtualDirectory>(
            guardedValue,
            (value) => VirtualDirectory.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      virtualPath: (() {
        final guardedValue = map['virtualPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
