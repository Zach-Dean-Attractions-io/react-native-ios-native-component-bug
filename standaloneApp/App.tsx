import { View, StyleSheet, Text } from 'react-native';
import { FabricNativeComponentTestView } from 'fabric-native-component-test';

export default function App() {
  return (
    <View style={styles.container}>
      <Text>My Standalone App</Text>
      <FabricNativeComponentTestView color="#32a852" style={styles.box} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});