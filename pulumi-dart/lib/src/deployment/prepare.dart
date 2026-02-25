// import 'dart:async';
// import 'dart:collection';
// import 'package:pulumi/src/deployment/models.dart';
// import 'package:pulumi/src/resource/resource.dart';
// import 'package:pulumi/src/resource/resource_options.dart';
// import 'package:pulumi/src/pulumirpc/google/protobuf/struct.pb.dart';
// import 'package:pulumi/src/resource/resource_transformation.dart';
//
// import '../alias.dart';
// import '../pulumirpc/pulumi/callback.pb.dart';
// import '../pulumirpc/pulumi/resource.pb.dart' as pb;
// import '../resource/component_resource.dart';
// import '../resource/custom_resource.dart';
// import '../resource/provider_resource.dart';
// import 'deployment.dart';
//
// mixin DeploymentPrepare on DeploymentImpl {
//   final _registeredPackages = HashMap<String, Lazy<Future<String?>>>();
//
//   Future<PrepareResult> prepareResourceAsync(
//       String label,
//       Resource res,
//       bool custom,
//       bool remote,
//       ResourceArgs args,
//       ResourceOptions options, {
//         RegisterPackageRequest? registerPackageRequest,
//       }) async {
//     var type = res.getResourceType();
//     var name = res.getResourceName();
//
//     _logExcessive(
//       "Gathering explicit dependencies: t=$type, name=$name, custom=$custom, remote=$remote",
//     );
//     var explicitDirectDependencies = await _gatherExplicitDependenciesAsync(
//       options.dependsOn ?? [],
//     );
//     _logExcessive(
//       "Gathered explicit dependencies: t=$type, name=$name, custom=$custom, remote=$remote",
//     );
//
//     _logExcessive(
//       "Serializing properties: t=$type, name=$name, custom=$custom, remote=$remote",
//     );
//     var dictionary = await args.toDictionary();
//     var (serializedProps, propertyToDirectDependencies) =
//     await _serializeResourcePropertiesAsync(
//       label,
//       dictionary,
//       await _monitorSupportsResourceReferences(),
//       keepOutputValues: remote && await _monitorSupportsOutputValues(),
//     );
//     _logExcessive(
//       "Serialized properties: t=$type, name=$name, custom=$custom, remote=$remote",
//     );
//
//     _logExcessive(
//       "Getting parent urn: t=$type, name=$name, custom=$custom, remote=$remote",
//     );
//     var parentUrn = options.parent != null
//         ? await options.parent!.urn.getValue()
//         : await _getRootResourceAsync(type);
//     _logExcessive(
//       "Got parent urn: t=$type, name=$name, custom=$custom, remote=$remote",
//     );
//
//     String? providerRef;
//     if (custom) {
//       var customOpts = options as CustomResourceOptions;
//       providerRef =
//       await ProviderResource.register(customOpts.provider);
//
//       if (providerRef == null) {
//         var parentRef = customOpts.parent?.getProvider(type);
//         providerRef = await ProviderResource.register(parentRef);
//       }
//     }
//
//     var providerRefs = <String, String>{};
//     if (remote && options is ComponentResourceOptions) {
//       if (options.provider != null) {
//         bool duplicate = false;
//         for (var p in options.providers) {
//           if (p.package == options.provider!.package) {
//             duplicate = true;
//             DeploymentImpl.instance.logger.warn(
//               "Conflict between provider and providers field for package '${p.package}'.",
//             );
//           }
//         }
//         if (!duplicate) {
//           options.providers.add(options.provider!);
//         }
//       }
//
//       for (var provider in options.providers) {
//         var pref = await ProviderResource.register(provider);
//         if (pref != null) {
//           providerRefs[provider.package] = pref;
//         }
//       }
//     }
//
//     var allDirectDependencies = explicitDirectDependencies;
//     var allDirectDependencyUrns = await _getAllTransitivelyReferencedResourceUrnsAsync(
//       explicitDirectDependencies,
//     );
//
//     var resourceMonitorSupportsAliasSpecs =
//     await _monitorSupportsAliasSpecs();
//     var aliases = await _prepareAliases(
//       res,
//       options,
//       resourceMonitorSupportsAliasSpecs,
//     );
//
//     var transforms = <Callback>[];
//     if (options.resourceTransforms.isNotEmpty) {
//       var resourceMonitorSupportsTransforms =
//       await _monitorSupportsTransforms();
//       if (!resourceMonitorSupportsTransforms) {
//         throw Exception(
//             "The Pulumi CLI does not support resource transforms. Please update the Pulumi CLI.");
//       }
//
//       var callbacks = await _getCallbacks();
//       for (var t in options.resourceTransforms) {
//         transforms.add(await _allocateTransform(callbacks, t));
//       }
//     }
//
//     String? packageRef;
//     if (registerPackageRequest != null) {
//       packageRef = await _resolvePackageRef(registerPackageRequest);
//     }
//
//     return PrepareResult(
//       serializedProps,
//       parentUrn ?? "",
//       providerRef ?? "",
//       providerRefs,
//       allDirectDependencyUrns,
//       aliases,
//       transforms,
//       packageRef: packageRef,
//     );
//   }
//
//   void _logExcessive(String message) {
//     logger.debug(message); // Example logging function
//   }
//
//   Future<Set<Resource>> _gatherExplicitDependenciesAsync(
//       List<Resource> resources) async {
//     return resources.toSet();
//   }
//
//   Future<Set<String>> _getAllTransitivelyReferencedResourceUrnsAsync(
//       Set<Resource> resources) async {
//     return resources.map((r) => r.urn).toSet();
//   }
//
//   Future<bool> _monitorSupportsResourceReferences() async {
//     return true;
//   }
//
//   Future<bool> _monitorSupportsOutputValues() async {
//     return true;
//   }
//
//   Future<(Struct, Map<String, Set<Resource>>)> _serializeResourcePropertiesAsync(
//       String label,
//       Map<String, dynamic> dictionary,
//       bool supportsReferences, {
//         bool keepOutputValues = false,
//       }) async {
//     return (Struct(), <String, Set<Resource>>{});
//   }
//
//   Future<String?> _getRootResourceAsync(String type) async {
//     return "rootResourceUrn";
//   }
//
//   Future<String?> _resolvePackageRef(RegisterPackageRequest request) async {
//     var key = "${request.name}-${request.version}";
//     if (_registeredPackages.containsKey(key)) {
//       return await _registeredPackages[key]!.value;
//     }
//
//     Future<String?> createResolver() async {
//       try {
//         var package = _createRegisterPackageRequest(request);
//         var response = await _monitorRegisterPackageAsync(package);
//         return response.ref;
//       } catch (_) {
//         if (request.parameterization != null) {
//           rethrow;
//         }
//         return null;
//       }
//     }
//
//     var resolver = Lazy<Future<String?>>(createResolver);
//     _registeredPackages[key] = resolver;
//     return await resolver.value;
//   }
//
//   RegisterPackageRequest _createRegisterPackageRequest(
//       RegisterPackageRequest request) {
//     return RegisterPackageRequest(
//       name: request.name,
//       version: request.version,
//       downloadUrl: request.downloadUrl,
//       checksums: request.checksums,
//       parameterization: request.parameterization,
//     );
//   }
//
//   Future<pb.RegisterPackageResponse> _monitorRegisterPackageAsync(
//       RegisterPackageRequest packageRequest) async {
//     return pb.RegisterPackageResponse(ref: "packageRef");
//   }
//
//   Future<List<Alias>> _prepareAliases(Resource resource,
//       ResourceOptions options, bool resourceMonitorSupportsAliasSpec) async {
//     var aliases = <Alias>[];
//     // Handle alias logic
//     return aliases;
//   }
//
//   allocateTransform(Callback callbacl,  ResourceTransform transform){
//
//   }
// }
//
// class PrepareResult {
//   final Struct serializedProps;
//   final String parentUrn;
//   final String providerRef;
//   final Map<String, String> providerRefs;
//   final Set<String> allDirectDependencyUrns;
//   final List<Alias> aliases;
//   final List<Callback> transforms;
//   final String? packageRef;
//
//   PrepareResult(
//       this.serializedProps,
//       this.parentUrn,
//       this.providerRef,
//       this.providerRefs,
//       this.allDirectDependencyUrns,
//       this.aliases,
//       this.transforms, {
//         this.packageRef,
//       });
// }
//
// class Lazy<T> {
//   final FutureOr<T> Function() _resolver;
//   late Future<T> value;
//
//   Lazy(this._resolver) {
//     value = Future(_resolver);
//   }
// }
