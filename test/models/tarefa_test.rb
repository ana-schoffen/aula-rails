require 'test_helper'

class TarefaTest < ActiveSupport::TestCase
  test 'cria tarefa' do
    t = Tarefa.new(name: 'Lavar o carro', description: 'antes do fim de semana', status: false)
    assert t.save
  end
  test 'cria tarefa sem nome' do
    t = Tarefa.new(description: 'antes do fim de semana', status: false)
    assert_not t.save
  end
  test 'cria tarefa sem descrição' do
    t = Tarefa.new(name: 'Lavar o carro', status: false)
    assert_not t.save
  end
  test 'cria tarefa sem status' do
    t = Tarefa.new(name: 'Lavar o carro', description: 'antes do fim de semana')
    assert_not t.save
  end
  test 'cria tarefa nome pequeno' do
    t = Tarefa.new(description: 'antes do fim de semana', status: false)
    t.name = 'aaaa'
    assert_not t.save
  end
  test 'cria tarefa nome grande' do
    t = Tarefa.new(description: 'antes do fim de semana', status: false)
    t.name = 'a' * 51
    assert_not t.save
  end
  test 'cria tarefa descrição grande' do
    t = Tarefa.new(name: 'Lavar o carro', status: false)
    t.description = 'a' * 501
    assert_not t.save
  end
  test 'cria tarefa descrição pequena' do
    t = Tarefa.new(name: 'Lavar o carro', status: false)
    t.description = 'a' * 9
    assert_not t.save
  end
end
