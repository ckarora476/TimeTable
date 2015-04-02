<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link rel="import" href="bower_components/core-input/core-input.html">
<link rel="import" href="bower_components/core-icons/core-icons.html">
<link rel="import" href="bower_components/core-icons/av-icons.html">
<link rel="import" href="bower_components/paper-fab/paper-fab.html">

<polymer-element name="my-element">

  <template>
    <style>    
      :host {
        position: absolute;
        width: 100%;
        height: 100%;
        box-sizing: border-box;
      }
      #core_card {
        position: absolute;
        width: 300px;
        height: 300px;
        border-radius: 2px;
        box-shadow: rgba(0, 0, 0, 0.0980392) 0px 2px 4px, rgba(0, 0, 0, 0.0980392) 0px 0px 3px;
        left: 290px;
        top: 130px;
        background-color: rgb(255, 255, 255);
      }
      #input {
        padding: 15px;
      }
      #input1 {
        padding: 15px;
      }
    </style>
    <core-card id="core_card" layout vertical>
      <div id="div" layout horizontal>
			</div>
      <input id="input1" placeholder="type something..." is="core-input">
      <input id="input" placeholder="type something..." is="core-input">
      <paper-fab icon="check" id="paper_fab" center-justified></paper-fab>
    </core-card>
  </template>

  <script>

    Polymer({
      
    });

  </script>

</polymer-element>