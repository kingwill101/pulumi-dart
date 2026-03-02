// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDbSystemShapesDbSystemShape {
  /// Indicates if the shape supports database and storage server types.
  final pulumi.Input<bool> areServerTypesSupported;
  /// The maximum number of CPU cores that can be enabled on the DB system for this shape.
  final pulumi.Input<int> availableCoreCount;
  /// The maximum number of CPU cores per database node that can be enabled for this shape. Only applicable to the flex Exadata shape, ExaCC Elastic shapes and VM Flex shapes.
  final pulumi.Input<int> availableCoreCountPerNode;
  /// The maximum data storage that can be enabled for this shape.
  final pulumi.Input<int> availableDataStorageInTbs;
  /// The maximum data storage available per storage server for this shape. Only applicable to ExaCC Elastic shapes.
  final pulumi.Input<int> availableDataStoragePerServerInTbs;
  /// The maximum DB Node storage available per database node for this shape. Only applicable to ExaCC Elastic shapes.
  final pulumi.Input<int> availableDbNodePerNodeInGbs;
  /// The maximum DB Node storage that can be enabled for this shape.
  final pulumi.Input<int> availableDbNodeStorageInGbs;
  /// The maximum memory that can be enabled for this shape.
  final pulumi.Input<int> availableMemoryInGbs;
  /// The maximum memory available per database node for this shape. Only applicable to ExaCC Elastic shapes.
  final pulumi.Input<int> availableMemoryPerNodeInGbs;
  /// The compute model of the Exadata Infrastructure.
  final pulumi.Input<String> computeModel;
  /// The discrete number by which the CPU core count for this shape can be increased or decreased.
  final pulumi.Input<int> coreCountIncrement;
  /// The display name of the shape used for the DB system.
  final pulumi.Input<String> displayName;
  /// The maximum number of compute servers available for this shape.
  final pulumi.Input<int> maximumNodeCount;
  /// The maximum number of Exadata storage servers available for the Exadata infrastructure.
  final pulumi.Input<int> maximumStorageCount;
  /// The minimum number of CPU cores that can be enabled on the DB system for this shape.
  final pulumi.Input<int> minimumCoreCount;
  /// The minimum number of CPU cores that can be enabled per node for this shape.
  final pulumi.Input<int> minimumCoreCountPerNode;
  /// The minimum data storage that need be allocated for this shape.
  final pulumi.Input<int> minimumDataStorageInTbs;
  /// The minimum DB Node storage that need be allocated per node for this shape.
  final pulumi.Input<int> minimumDbNodeStoragePerNodeInGbs;
  /// The minimum memory that need be allocated per node for this shape.
  final pulumi.Input<int> minimumMemoryPerNodeInGbs;
  /// The minimum number of compute servers available for this shape.
  final pulumi.Input<int> minimumNodeCount;
  /// The minimum number of Exadata storage servers available for the Exadata infrastructure.
  final pulumi.Input<int> minimumStorageCount;
  /// The runtime minimum number of compute servers available for this shape.
  final pulumi.Input<int> runtimeMinimumCoreCount;
  /// The family of the shape used for the DB system.
  final pulumi.Input<String> shapeFamily;

  /// Creates a new [GetDbSystemShapesDbSystemShape].
  /// [areServerTypesSupported] Indicates if the shape supports database and storage server types.
  /// [availableCoreCount] The maximum number of CPU cores that can be enabled on the DB system for this shape.
  /// [availableCoreCountPerNode] The maximum number of CPU cores per database node that can be enabled for this shape. Only applicable to the flex Exadata shape, ExaCC Elastic shapes and VM Flex shapes.
  /// [availableDataStorageInTbs] The maximum data storage that can be enabled for this shape.
  /// [availableDataStoragePerServerInTbs] The maximum data storage available per storage server for this shape. Only applicable to ExaCC Elastic shapes.
  /// [availableDbNodePerNodeInGbs] The maximum DB Node storage available per database node for this shape. Only applicable to ExaCC Elastic shapes.
  /// [availableDbNodeStorageInGbs] The maximum DB Node storage that can be enabled for this shape.
  /// [availableMemoryInGbs] The maximum memory that can be enabled for this shape.
  /// [availableMemoryPerNodeInGbs] The maximum memory available per database node for this shape. Only applicable to ExaCC Elastic shapes.
  /// [computeModel] The compute model of the Exadata Infrastructure.
  /// [coreCountIncrement] The discrete number by which the CPU core count for this shape can be increased or decreased.
  /// [displayName] The display name of the shape used for the DB system.
  /// [maximumNodeCount] The maximum number of compute servers available for this shape.
  /// [maximumStorageCount] The maximum number of Exadata storage servers available for the Exadata infrastructure.
  /// [minimumCoreCount] The minimum number of CPU cores that can be enabled on the DB system for this shape.
  /// [minimumCoreCountPerNode] The minimum number of CPU cores that can be enabled per node for this shape.
  /// [minimumDataStorageInTbs] The minimum data storage that need be allocated for this shape.
  /// [minimumDbNodeStoragePerNodeInGbs] The minimum DB Node storage that need be allocated per node for this shape.
  /// [minimumMemoryPerNodeInGbs] The minimum memory that need be allocated per node for this shape.
  /// [minimumNodeCount] The minimum number of compute servers available for this shape.
  /// [minimumStorageCount] The minimum number of Exadata storage servers available for the Exadata infrastructure.
  /// [runtimeMinimumCoreCount] The runtime minimum number of compute servers available for this shape.
  /// [shapeFamily] The family of the shape used for the DB system.
  GetDbSystemShapesDbSystemShape({
    required this.areServerTypesSupported,
    required this.availableCoreCount,
    required this.availableCoreCountPerNode,
    required this.availableDataStorageInTbs,
    required this.availableDataStoragePerServerInTbs,
    required this.availableDbNodePerNodeInGbs,
    required this.availableDbNodeStorageInGbs,
    required this.availableMemoryInGbs,
    required this.availableMemoryPerNodeInGbs,
    required this.computeModel,
    required this.coreCountIncrement,
    required this.displayName,
    required this.maximumNodeCount,
    required this.maximumStorageCount,
    required this.minimumCoreCount,
    required this.minimumCoreCountPerNode,
    required this.minimumDataStorageInTbs,
    required this.minimumDbNodeStoragePerNodeInGbs,
    required this.minimumMemoryPerNodeInGbs,
    required this.minimumNodeCount,
    required this.minimumStorageCount,
    required this.runtimeMinimumCoreCount,
    required this.shapeFamily,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'areServerTypesSupported': areServerTypesSupported,
      'availableCoreCount': availableCoreCount,
      'availableCoreCountPerNode': availableCoreCountPerNode,
      'availableDataStorageInTbs': availableDataStorageInTbs,
      'availableDataStoragePerServerInTbs': availableDataStoragePerServerInTbs,
      'availableDbNodePerNodeInGbs': availableDbNodePerNodeInGbs,
      'availableDbNodeStorageInGbs': availableDbNodeStorageInGbs,
      'availableMemoryInGbs': availableMemoryInGbs,
      'availableMemoryPerNodeInGbs': availableMemoryPerNodeInGbs,
      'computeModel': computeModel,
      'coreCountIncrement': coreCountIncrement,
      'displayName': displayName,
      'maximumNodeCount': maximumNodeCount,
      'maximumStorageCount': maximumStorageCount,
      'minimumCoreCount': minimumCoreCount,
      'minimumCoreCountPerNode': minimumCoreCountPerNode,
      'minimumDataStorageInTbs': minimumDataStorageInTbs,
      'minimumDbNodeStoragePerNodeInGbs': minimumDbNodeStoragePerNodeInGbs,
      'minimumMemoryPerNodeInGbs': minimumMemoryPerNodeInGbs,
      'minimumNodeCount': minimumNodeCount,
      'minimumStorageCount': minimumStorageCount,
      'runtimeMinimumCoreCount': runtimeMinimumCoreCount,
      'shapeFamily': shapeFamily,
    };
  }

  factory GetDbSystemShapesDbSystemShape.fromMap(Map<String, dynamic> map) {
    return GetDbSystemShapesDbSystemShape(
      areServerTypesSupported: (map['areServerTypesSupported'] as bool).input(),
      availableCoreCount: (map['availableCoreCount'] as int).input(),
      availableCoreCountPerNode: (map['availableCoreCountPerNode'] as int).input(),
      availableDataStorageInTbs: (map['availableDataStorageInTbs'] as int).input(),
      availableDataStoragePerServerInTbs: (map['availableDataStoragePerServerInTbs'] as int).input(),
      availableDbNodePerNodeInGbs: (map['availableDbNodePerNodeInGbs'] as int).input(),
      availableDbNodeStorageInGbs: (map['availableDbNodeStorageInGbs'] as int).input(),
      availableMemoryInGbs: (map['availableMemoryInGbs'] as int).input(),
      availableMemoryPerNodeInGbs: (map['availableMemoryPerNodeInGbs'] as int).input(),
      computeModel: (map['computeModel'] as String).input(),
      coreCountIncrement: (map['coreCountIncrement'] as int).input(),
      displayName: (map['displayName'] as String).input(),
      maximumNodeCount: (map['maximumNodeCount'] as int).input(),
      maximumStorageCount: (map['maximumStorageCount'] as int).input(),
      minimumCoreCount: (map['minimumCoreCount'] as int).input(),
      minimumCoreCountPerNode: (map['minimumCoreCountPerNode'] as int).input(),
      minimumDataStorageInTbs: (map['minimumDataStorageInTbs'] as int).input(),
      minimumDbNodeStoragePerNodeInGbs: (map['minimumDbNodeStoragePerNodeInGbs'] as int).input(),
      minimumMemoryPerNodeInGbs: (map['minimumMemoryPerNodeInGbs'] as int).input(),
      minimumNodeCount: (map['minimumNodeCount'] as int).input(),
      minimumStorageCount: (map['minimumStorageCount'] as int).input(),
      runtimeMinimumCoreCount: (map['runtimeMinimumCoreCount'] as int).input(),
      shapeFamily: (map['shapeFamily'] as String).input(),
    );
  }
}

