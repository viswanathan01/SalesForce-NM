Map<String, Object> inputs = new Map<String, Object>();
inputs.put('ids', 'P-001');
Flow.Interview.Parcel_Details myFlow = new Flow.Interview.Parcel_Details(inputs);
myFlow.start();
String result = (String) myFlow.getVariableValue('Output');
System.debug('=== SWIFTSHIP FLOW OUTPUT START ===');
System.debug(result);
System.debug('=== SWIFTSHIP FLOW OUTPUT END ===');
