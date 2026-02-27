import 'package:pulumi/src/resource/resource_options.dart';

import 'resource.dart';

class DependencyResource extends Resource {
  final String _urn;

  DependencyResource(this._urn)
    : super(
        _typeFromUrn(_urn),
        _nameFromUrn(_urn),
        false,
        {},
        ResourceOptions(),
        dependency: true,
      ) {
    resolveUrn(_urn);
  }

  @override
  String getResourceType() => _typeFromUrn(_urn);

  @override
  String getResourceName() => _nameFromUrn(_urn);

  static String _typeFromUrn(String urn) {
    var parts = urn.split("::");
    return parts.length > 2 ? parts[2] : "unknown";
  }

  static String _nameFromUrn(String urn) {
    var parts = urn.split("::");
    return parts.length > 3 ? parts[3] : "unknown";
  }
}
