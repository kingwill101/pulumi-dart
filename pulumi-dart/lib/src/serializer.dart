import 'package:pulumi/src/asset_archive.dart';
import 'package:pulumi/src/resource/component_resource.dart';
import 'package:pulumi/src/resource/resource.dart';

import 'constants.dart';
import 'input.dart';
import 'output.dart';
import 'resource/custom_resource.dart';

class Serializer {
  final Set<Resource> dependentResources = {};
  final bool _excessiveDebugOutput;

  Serializer({bool excessiveDebugOutput = false})
      : _excessiveDebugOutput = excessiveDebugOutput;

  Future<dynamic> serializeAsync(String ctx, dynamic prop, bool keepResources,
      {bool keepOutputValues = false}) async {
    if (prop == null ||
        prop is bool ||
        prop is int ||
        prop is double ||
        prop is String) {
      if (_excessiveDebugOutput) {
        print('Serialize property[$ctx]: primitive=$prop');
      }
      return prop;
    }

    if (prop is Inputs) {
      return serializeResourceArgs(ctx, prop, keepResources, keepOutputValues);
    }

    if (prop is AssetOrArchive) {
      return serializeAssetOrArchive(ctx, prop, keepResources);
    }

    if (prop is Future) {
      throw Exception(
          'Futures are not allowed inside ResourceArgs. Please wrap your Future in an Output:\n\t$ctx');
    }

    if (prop is Input) {
      if (_excessiveDebugOutput) {
        print('Serialize property[$ctx]: Recursing into Input');
      }
      return serializeAsync(ctx, prop.toOutput(), keepResources,
          keepOutputValues: keepOutputValues);
    }

    if (prop is Output) {
      if (_excessiveDebugOutput) {
        print('Serialize property[$ctx]: Recursing into Output');
      }
      var data = await prop.getData();
      dependentResources.addAll(data.resources);
      var propResources = Set<Resource>.from(data.resources);

      var isKnown = data.isKnown;
      var isSecret = data.isSecret;

      var valueSerializer =
          Serializer(excessiveDebugOutput: _excessiveDebugOutput);
      dynamic value = isKnown
          ? await valueSerializer.serializeAsync(
              '$ctx.value', data.value, keepResources,
              keepOutputValues: false)
          : null;

      var promiseDeps = valueSerializer.dependentResources;
      dependentResources.addAll(promiseDeps);
      propResources.addAll(promiseDeps);

      if (keepOutputValues) {
        if (isKnown && !isSecret && propResources.isEmpty) {
          return value;
        }

        var urnDeps = <Resource>{};
        for (var resource in propResources) {
          var urnSerializer =
              Serializer(excessiveDebugOutput: _excessiveDebugOutput);
          await urnSerializer.serializeAsync(
              '$ctx dependency', resource.urn, keepResources,
              keepOutputValues: false);
          urnDeps.addAll(urnSerializer.dependentResources);
        }
        dependentResources.addAll(urnDeps);
        propResources.addAll(urnDeps);

        var dependencies =
            await getAllTransitivelyReferencedResourceUrns(propResources);
        var result = {
          Constants.specialSigKey: Constants.specialOutputValueSig,
          if (isKnown) Constants.valueName: value,
          if (isSecret) Constants.secretName: isSecret,
          if (dependencies.isNotEmpty)
            Constants.dependenciesName: dependencies.toList()..sort(),
        };
        return result;
      }

      if (!isKnown) return _unknownSentinelForOutput(prop);

      if (isSecret) {
        return {
          Constants.specialSigKey: Constants.specialSecretSig,
          Constants.valueName: value,
        };
      }

      return value;
    }

    if (prop is CustomResource) {
      if (_excessiveDebugOutput) {
        print('Serialize property[$ctx]: Encountered Resource');
      }

      dependentResources.add(prop);

      var id = await serializeAsync('$ctx.id', prop.id, keepResources,
          keepOutputValues: false);
      if (keepResources) {
        var urn = await serializeAsync('$ctx.urn', prop.urn, keepResources,
            keepOutputValues: false);
        return {
          Constants.specialSigKey: Constants.specialResourceSig,
          Constants.resourceUrnName: urn,
          Constants.resourceIdName:
              id is String && Constants.isUnknownSentinel(id) ? '' : id,
        };
      }
      return id;
    }

    if (prop is ComponentResource) {
      if (_excessiveDebugOutput) {
        print('Serialize property[$ctx]: Encountered Resource');
      }

      dependentResources.add(prop);

      var urn = await serializeAsync('$ctx.urn', prop.urn, keepResources,
          keepOutputValues: false);
      if (keepResources) {
        return {
          Constants.specialSigKey: Constants.specialResourceSig,
          Constants.resourceUrnName: urn,
        };
      }
      return urn;
    }

    if (prop is Map) {
      final serialized =
          await serializeMap(ctx, prop.cast(), keepResources, keepOutputValues);
      if (!keepOutputValues && _containsUnknowns(serialized)) {
        return Constants.unknownObjectValue;
      }
      return serialized;
    }

    if (prop is Iterable) {
      final serialized =
          await serializeList(ctx, prop, keepResources, keepOutputValues);
      if (!keepOutputValues && _containsUnknowns(serialized)) {
        return Constants.unknownArrayValue;
      }
      return serialized;
    }

    throw Exception(
        '${prop.runtimeType} is not a supported argument type.\n\t$ctx');
  }

  Future<Map<String, dynamic>> serializeResourceArgs(String ctx, Inputs args,
      bool keepResources, bool keepOutputValues) async {
    if (_excessiveDebugOutput) {
      print('Serialize property[$ctx]: Recursing into ResourceArgs');
    }

    return serializeMap(ctx, args, keepResources, keepOutputValues);
  }

  Future<Map<String, dynamic>> serializeAssetOrArchive(
      String ctx, AssetOrArchive assetOrArchive, bool keepResources) async {
    if (_excessiveDebugOutput) {
      print(
          'Serialize property[$ctx]: asset/archive=${assetOrArchive.runtimeType}');
    }

    String propName;
    String sigKey;
    dynamic value;

    if (assetOrArchive is FileAsset) {
      propName = Constants.assetOrArchivePathName;
      sigKey = Constants.specialAssetSig;
      value = assetOrArchive.path;
    } else if (assetOrArchive is StringAsset) {
      propName = Constants.assetTextName;
      sigKey = Constants.specialAssetSig;
      value = assetOrArchive.content;
    } else if (assetOrArchive is RemoteAsset) {
      propName = Constants.assetOrArchiveUriName;
      sigKey = Constants.specialAssetSig;
      value = assetOrArchive.url;
    } else if (assetOrArchive is FileArchive) {
      propName = Constants.assetOrArchivePathName;
      sigKey = Constants.specialArchiveSig;
      value = assetOrArchive.path;
    } else if (assetOrArchive is AssetArchive) {
      propName = Constants.archiveAssetsName;
      sigKey = Constants.specialArchiveSig;
      value =
          await serializeMap(ctx, assetOrArchive.assets, keepResources, false);
    } else if (assetOrArchive is RemoteArchive) {
      propName = Constants.assetOrArchiveUriName;
      sigKey = Constants.specialArchiveSig;
      value = assetOrArchive.url;
    } else {
      throw Exception(
          'Unknown asset or archive type: ${assetOrArchive.runtimeType}');
    }

    var serializedValue = await serializeAsync(
        ctx + "." + propName, value, keepResources,
        keepOutputValues: false);

    return {
      Constants.specialSigKey: sigKey,
      propName: serializedValue,
    };
  }

  Future<Map<String, dynamic>> serializeMap(
      String ctx,
      Map<String, dynamic> map,
      bool keepResources,
      bool keepOutputValues) async {
    if (_excessiveDebugOutput) {
      print('Serialize property[$ctx]: Hit map');
    }

    var result = <String, dynamic>{};
    for (var entry in map.entries) {
      if (_excessiveDebugOutput) {
        print('Serialize property[$ctx]: object.${entry.key}');
      }

      var v = await serializeAsync(
          '$ctx.${entry.key}', entry.value, keepResources,
          keepOutputValues: keepOutputValues);
      if (v != null) {
        result[entry.key] = v;
      }
    }

    return result;
  }

  Future<List<dynamic>> serializeList(String ctx, Iterable iterable,
      bool keepResources, bool keepOutputValues) async {
    if (_excessiveDebugOutput) {
      print('Serialize property[$ctx]: Hit list');
    }

    var result = <dynamic>[];
    var index = 0;
    for (var item in iterable) {
      if (_excessiveDebugOutput) {
        print('Serialize property[$ctx]: array[$index] element');
      }

      result.add(await serializeAsync('$ctx[$index]', item, keepResources,
          keepOutputValues: keepOutputValues));
      index++;
    }

    return result;
  }

  static Future<Set<String>> getAllTransitivelyReferencedResourceUrns(
      Set<Resource> resources) async {
    // Implementation depends on your Resource class structure
    // This is a placeholder implementation
    Set<String> urns = {};
    for (var r in resources) {
      final urn = await r.urn.getValue();
      urns.add(urn);
    }
    return urns;
  }

  String _unknownSentinelForOutput(Output output) {
    if (output is Output<bool>) {
      return Constants.unknownBoolValue;
    }
    if (output is Output<int> ||
        output is Output<double> ||
        output is Output<num>) {
      return Constants.unknownNumberValue;
    }
    if (output is Output<List> || output is Output<Iterable>) {
      return Constants.unknownArrayValue;
    }
    if (output is Output<Map>) {
      return Constants.unknownObjectValue;
    }
    return Constants.unknownValue;
  }

  bool _containsUnknowns(dynamic value) {
    if (value is String) {
      return Constants.isUnknownSentinel(value);
    }
    if (value is List) {
      for (final element in value) {
        if (_containsUnknowns(element)) {
          return true;
        }
      }
      return false;
    }
    if (value is Map) {
      for (final entry in value.entries) {
        if (entry.key == Constants.specialSigKey) {
          continue;
        }
        if (_containsUnknowns(entry.value)) {
          return true;
        }
      }
      return false;
    }
    return false;
  }
}
