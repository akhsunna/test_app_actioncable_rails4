#= require cable
#= require_self
#= require_tree .

@App = {}
App.cable = Cable.createConsumer 'ws://localhost:28080'

App.apples = App.cable.subscriptions.create 'ApplesChannel',
  showApple: (apple) ->
    $('#apples').append "<p>NEW STATUS:<b>[#{apple.status}]:</b></p>"
    console.log('YEEEEEEEAAHHHHHHH');
    alert('YEEAAHH');

  received: (data) ->
    @showApple(data.apple)