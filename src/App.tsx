import React from "react";
import { Text, View, ViewStyle } from "react-native";

const style: ViewStyle = {
  alignItems: "center",
  justifyContent: "center",
  backgroundColor: "#F5FCFF",
  flex: 1,
};

const App: React.FC = () => (
  <View {...{ style }}>
    <Text>Hello World!!!</Text>
  </View>
);

export default App;
