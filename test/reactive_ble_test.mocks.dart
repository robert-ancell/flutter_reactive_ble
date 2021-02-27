import 'package:mockito/mockito.dart' as _i1;
import 'package:flutter_reactive_ble/src/model/result.dart' as _i2;
import 'package:flutter_reactive_ble/src/plugin_controller.dart' as _i3;
import 'dart:async' as _i4;
import 'package:flutter_reactive_ble/src/model/ble_status.dart' as _i5;
import 'package:flutter_reactive_ble/src/model/unit.dart' as _i6;
import 'package:flutter_reactive_ble/src/model/generic_failure.dart' as _i7;
import 'package:flutter_reactive_ble/src/model/clear_gatt_cache_error.dart'
    as _i8;
import 'package:flutter_reactive_ble/src/debug_logger.dart' as _i9;
import 'package:flutter_reactive_ble/src/model/log_level.dart' as _i10;
import 'package:flutter_reactive_ble/src/connected_device_operation.dart'
    as _i11;
import 'package:flutter_reactive_ble/src/model/characteristic_value.dart'
    as _i12;
import 'package:flutter_reactive_ble/src/model/qualified_characteristic.dart'
    as _i13;
import 'package:flutter_reactive_ble/src/model/discovered_service.dart' as _i14;
import 'package:flutter_reactive_ble/src/model/connection_priority.dart'
    as _i15;
import 'package:flutter_reactive_ble/src/device_connector.dart' as _i16;
import 'package:flutter_reactive_ble/src/model/connection_state_update.dart'
    as _i17;
import 'package:flutter_reactive_ble/src/model/uuid.dart' as _i18;
import 'package:flutter_reactive_ble/src/device_scanner.dart' as _i19;
import 'package:flutter_reactive_ble/src/model/discovered_device.dart' as _i20;
import 'package:flutter_reactive_ble/src/model/scan_mode.dart' as _i21;

class _FakeResult<Value, Failure> extends _i1.Fake
    implements _i2.Result<Value, Failure> {}

/// A class which mocks [BleOperationController].
///
/// See the documentation for Mockito's code generation for more information.
class MockBleOperationController extends _i1.Mock
    implements _i3.BleOperationController {
  MockBleOperationController() {
    _i1.throwOnMissingStub(this);
  }

  _i4.Stream<_i5.BleStatus> get bleStatusStream => super.noSuchMethod(
      Invocation.getter(#bleStatusStream), Stream<_i5.BleStatus>.empty());
  _i4.Future<void> initialize() => (super
          .noSuchMethod(Invocation.method(#initialize, []), Future.value(null))
      as _i4.Future<void>);
  _i4.Future<void> deinitialize() => (super.noSuchMethod(
          Invocation.method(#deinitialize, []), Future.value(null))
      as _i4.Future<void>);
  _i4.Future<_i2.Result<_i6.Unit, _i7.GenericFailure<_i8.ClearGattCacheError>?>>
      clearGattCache(String? deviceId) => (super.noSuchMethod(
          Invocation.method(#clearGattCache, [deviceId]),
          Future.value(_FakeResult<_i6.Unit,
              _i7.GenericFailure<_i8.ClearGattCacheError>?>())) as _i4
          .Future<_i2.Result<_i6.Unit, _i7.GenericFailure<_i8.ClearGattCacheError>?>>);
}

/// A class which mocks [Logger].
///
/// See the documentation for Mockito's code generation for more information.
class MockLogger extends _i1.Mock implements _i9.Logger {
  MockLogger() {
    _i1.throwOnMissingStub(this);
  }

  set logLevel(_i10.LogLevel? logLevel) =>
      super.noSuchMethod(Invocation.setter(#logLevel, [logLevel]));
  void log(Object? message) =>
      super.noSuchMethod(Invocation.method(#log, [message]));
}

/// A class which mocks [ConnectedDeviceOperation].
///
/// See the documentation for Mockito's code generation for more information.
class MockConnectedDeviceOperation extends _i1.Mock
    implements _i11.ConnectedDeviceOperation {
  MockConnectedDeviceOperation() {
    _i1.throwOnMissingStub(this);
  }

  _i4.Stream<_i12.CharacteristicValue> get characteristicValueStream =>
      super.noSuchMethod(Invocation.getter(#characteristicValueStream),
          Stream<_i12.CharacteristicValue>.empty());
  _i4.Future<List<int>> readCharacteristic(
          _i13.QualifiedCharacteristic? characteristic) =>
      (super.noSuchMethod(
          Invocation.method(#readCharacteristic, [characteristic]),
          Future.value(<int>[])) as _i4.Future<List<int>>);
  _i4.Future<void> writeCharacteristicWithResponse(
          _i13.QualifiedCharacteristic? characteristic,
          {List<int>? value}) =>
      (super.noSuchMethod(
          Invocation.method(#writeCharacteristicWithResponse, [characteristic],
              {#value: value}),
          Future.value(null)) as _i4.Future<void>);
  _i4.Future<void> writeCharacteristicWithoutResponse(
          _i13.QualifiedCharacteristic? characteristic,
          {List<int>? value}) =>
      (super.noSuchMethod(
          Invocation.method(#writeCharacteristicWithoutResponse,
              [characteristic], {#value: value}),
          Future.value(null)) as _i4.Future<void>);
  _i4.Stream<List<int>?> subscribeToCharacteristic(
          _i13.QualifiedCharacteristic? characteristic,
          _i4.Future<void>? isDisconnected) =>
      (super.noSuchMethod(
          Invocation.method(
              #subscribeToCharacteristic, [characteristic, isDisconnected]),
          Stream<List<int>?>.empty()) as _i4.Stream<List<int>?>);
  _i4.Future<int> requestMtu(String? deviceId, int? mtu) => (super.noSuchMethod(
          Invocation.method(#requestMtu, [deviceId, mtu]), Future.value(0))
      as _i4.Future<int>);
  _i4.Future<List<_i14.DiscoveredService>> discoverServices(String? deviceId) =>
      (super.noSuchMethod(Invocation.method(#discoverServices, [deviceId]),
              Future.value(<_i14.DiscoveredService>[]))
          as _i4.Future<List<_i14.DiscoveredService>>);
  _i4.Future<void> requestConnectionPriority(
          String? deviceId, _i15.ConnectionPriority? priority) =>
      (super.noSuchMethod(
          Invocation.method(#requestConnectionPriority, [deviceId, priority]),
          Future.value(null)) as _i4.Future<void>);
}

/// A class which mocks [DeviceConnector].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeviceConnector extends _i1.Mock implements _i16.DeviceConnector {
  MockDeviceConnector() {
    _i1.throwOnMissingStub(this);
  }

  _i4.Stream<_i17.ConnectionStateUpdate>
      get deviceConnectionStateUpdateStream => super.noSuchMethod(
          Invocation.getter(#deviceConnectionStateUpdateStream),
          Stream<_i17.ConnectionStateUpdate>.empty());
  _i4.Stream<_i17.ConnectionStateUpdate?> connect(
          {String? id,
          Map<_i18.Uuid, List<_i18.Uuid>>?
              servicesWithCharacteristicsToDiscover,
          Duration? connectionTimeout}) =>
      (super.noSuchMethod(
              Invocation.method(#connect, [], {
                #id: id,
                #servicesWithCharacteristicsToDiscover:
                    servicesWithCharacteristicsToDiscover,
                #connectionTimeout: connectionTimeout
              }),
              Stream<_i17.ConnectionStateUpdate?>.empty())
          as _i4.Stream<_i17.ConnectionStateUpdate?>);
  _i4.Stream<_i17.ConnectionStateUpdate?> connectToAdvertisingDevice(
          {String? id,
          List<_i18.Uuid>? withServices,
          Duration? prescanDuration,
          Map<_i18.Uuid, List<_i18.Uuid>>?
              servicesWithCharacteristicsToDiscover,
          Duration? connectionTimeout}) =>
      (super.noSuchMethod(
              Invocation.method(#connectToAdvertisingDevice, [], {
                #id: id,
                #withServices: withServices,
                #prescanDuration: prescanDuration,
                #servicesWithCharacteristicsToDiscover:
                    servicesWithCharacteristicsToDiscover,
                #connectionTimeout: connectionTimeout
              }),
              Stream<_i17.ConnectionStateUpdate?>.empty())
          as _i4.Stream<_i17.ConnectionStateUpdate?>);
}

/// A class which mocks [DeviceScanner].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeviceScanner extends _i1.Mock implements _i19.DeviceScanner {
  MockDeviceScanner() {
    _i1.throwOnMissingStub(this);
  }

  _i4.Stream<_i20.DiscoveredDevice> scanForDevices(
          {List<_i18.Uuid>? withServices,
          _i21.ScanMode? scanMode = _i21.ScanMode.balanced,
          bool? requireLocationServicesEnabled = true}) =>
      (super.noSuchMethod(
              Invocation.method(#scanForDevices, [], {
                #withServices: withServices,
                #scanMode: scanMode,
                #requireLocationServicesEnabled: requireLocationServicesEnabled
              }),
              Stream<_i20.DiscoveredDevice>.empty())
          as _i4.Stream<_i20.DiscoveredDevice>);
}