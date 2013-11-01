require 'spec_helper'
require_relative '../stack'

describe Stack do
  let(:stack) { Stack.new }
  let(:elements) { stack.elements }

  let(:number) { Generate.number }

  describe '#push' do
    context 'когда стек пуст' do
      it 'добавляется новый элемент' do
        stack.push number
        expect(
          elements[0]
        ).to eq number
      end

      it 'размер стека увеличивается на 1' do
        expect {
          stack.push number
        }.to change{ elements.size }.by(1)
      end
    end

    context 'когда в стеке уже есть элементы' do
      before(:each) { Generate.number(10, 30).times { stack.push Generate.number } }

      it 'добавляется новый элемент' do
        stack.push number
        expect(
          elements[0]
        ).to eq number
      end

      it 'размер стека увеличивается на 1' do
        expect {
          stack.push number
        }.to change{ elements.size }.by(1)
      end
    end

    context 'когда происходит вызов метода без параметра' do
      it 'выдается сообщение об ошибке в аргументах' do
        expect {
          stack.push
        }.to raise_error ArgumentError
      end
    end
  end

  describe '#pop' do
    context 'когда стек пуст' do
      it 'возвращается ничего' do
        expect(stack.pop).to eq(nil)
      end

      it 'размер стека не изменяется' do
        expect {
          stack.pop
        }.not_to change { elements.size }
      end
    end

    context 'когда в стеке больше 1-го элемента' do
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

    context 'когда в стеке 1 элемент' do
      before(:each) { stack.push number }

      it 'возвращается верхний элемент' do
        expect(stack.pop).to eq(number)
      end

      it 'размер стека равняется 0' do
        stack.pop
        elements.should have(0).items
      end
    end
  end

  describe '#peek' do
    context 'когда стек пуст' do
      it 'возвращается ничего' do
        expect(stack.peek).to eq(nil)
      end

      it 'размер стека не изменяется' do
        expect {
          stack.peek
        }.not_to change { elements.size }
      end
    end

    context 'когда в стеке больше 1-го элемента' do
      before(:each) do
        Generate.number(10, 30).times { stack.push Generate.number }
        stack.push number
      end

      it 'возвращается верхний элемент' do
        expect(stack.peek).to eq(number)
      end

      it 'размер стека не изменяется' do
        expect {
          stack.peek
        }.not_to change { elements.size }
      end
    end

    context 'когда в стеке 1 элемент' do
      before(:each) { stack.push number }

      it 'возвращается верхний элемент' do
        expect(stack.peek).to eq(number)
      end

      it 'размер стека не изменяется' do
        expect {
          stack.peek
        }.not_to change { elements.size }
      end
    end
  end
end
