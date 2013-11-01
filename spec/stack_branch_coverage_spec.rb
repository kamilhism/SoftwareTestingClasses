require 'spec_helper'
require_relative '../stack'

describe Stack do
  let(:stack) { Stack.new }
  let(:elements) { stack.elements }

  let(:number) { Generate.number }

  describe '#push' do
    it 'добавляется новый элемент' do
      stack.push number
      expect(
        elements[0]
      ).to eq number
    end
  end

  describe '#pop' do
    context 'если стек пуст' do
      it 'возвращается ничего' do
        expect(stack.pop).to be_nil
      end
    end

    context 'если в стеке есть элементы' do
      before(:each) do
        Generate.number(10, 30).times { stack.push Generate.number }
        stack.push number
      end

      it 'возвращается верхний элемент' do
        expect(stack.pop).to eq(number)
      end

      it 'размер стека уменьшается на 1' do
        expect {
          stack.pop
        }.to change{ elements.size }.by(-1)
      end
    end
  end

  describe '#peek' do
    context 'если стек пуст' do
      it 'возвращается ничего' do
        expect(stack.peek).to be_nil
      end
    end

    context 'если в стеке больше 1-го элемента' do
      before(:each) do
        Generate.number(10, 30).times { stack.push Generate.number }
        stack.push number
      end

      it 'возвращается верхний элемент' do
        expect(stack.peek).to eq(number)
      end
    end
  end
end
