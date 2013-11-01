require_relative '../stack'

describe Stack do
  before(:each) do
    @stack = Stack.new
  end

  describe '#push' do
    context 'когда стек пуст' do
      it 'добавляется новый элемент' do
      end
      it 'размер стека увеличивается на 1' do
      end
    end

    context 'когда в стеке уже есть элементы' do
      it 'добавляется новый элемент' do
      end
      it 'размер стека увеличивается на 1' do
      end
    end

    context 'когда происходит вызов метода без параметра' do
      it 'размер стека не изменяется' do
      end
    end
  end

  describe '#pop' do
    context 'когда стек пуст' do
      it 'возвращается ничего' do
      end
      it 'размер стека не изменяется' do
      end
    end

    context 'когда в стеке больше 1-го элемента' do
      it 'возвращается верхний элемент' do
      end
      it 'размер стека уменьшается на 1' do
      end
    end

    context 'когда в стеке 1 элемент' do
      it 'возвращается верхний элемент' do
      end
      it 'размер стека равняется 0' do
      end
    end
  end

  describe '#peek' do
    context 'когда стек пуст' do
      it 'возвращается ничего' do
      end
      it 'размер стека не изменяется' do
      end
    end

    context 'когда в стеке больше 1-го элемента' do
      it 'возвращается верхний элемент' do
      end
      it 'размер стека не изменяется' do
      end
    end

    context 'когда в стеке 1 элемент' do
      it 'возвращается верхний элемент' do
      end
      it 'размер стека не изменяется' do
      end
    end
  end
end
