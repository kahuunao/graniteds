/**
 * Generated by Gas3 v1.1.0 (Granite Data Services) on Sat Jul 26 17:58:20 CEST 2008.
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERRIDDEN EACH TIME YOU USE
 * THE GENERATOR. CHANGE INSTEAD THE INHERITED CLASS (Person.as).
 */

package org.granite.test.tide.data {

    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;
    
    import mx.collections.ListCollectionView;
    
    import org.granite.meta;
    import org.granite.tide.IEntityManager;
    import org.granite.tide.IPropertyHolder;
	import org.granite.test.tide.AbstractEntity;
    import org.granite.util.Enum;

    use namespace meta;

    [Managed]
    [RemoteClass(alias="org.granite.test.tide.Person4")]
    public class Person4 extends AbstractEntity {

		private var _salutation:Salutation;
        private var _contacts:ListCollectionView;
        private var _firstName:String;
		private var _address:EmbeddedAddress;
        private var _lastName:String;
        
        
        public function set salutation(value:Salutation):void {
        	_salutation = value;
        }
        public function get salutation():Salutation {
        	return _salutation;
        }
        
        public function set contacts(value:ListCollectionView):void {
            _contacts = value;
        }
        public function get contacts():ListCollectionView {
            return _contacts;
        }

        public function set firstName(value:String):void {
            _firstName = value;
        }
        public function get firstName():String {
            return _firstName;
        }
		
		public function set address(value:EmbeddedAddress):void {
			_address = value;
		}
		public function get address():EmbeddedAddress {
			return _address;
		}

        public function set lastName(value:String):void {
            _lastName = value;
        }
        public function get lastName():String {
            return _lastName;
        }

        override meta function merge(em:IEntityManager, obj:*):void {
            var src:Person4 = Person4(obj);
            super.meta::merge(em, obj);
            if (meta::isInitialized()) {
				em.meta_mergeExternal(src._address, _address, null, this, 'address', function setter(o:*):void{_address = o as EmbeddedAddress}) as EmbeddedAddress;
                em.meta_mergeExternal(src._contacts, _contacts, null, this, 'contacts', function setter(o:*):void{_contacts = o as ListCollectionView}) as ListCollectionView;
                em.meta_mergeExternal(src._firstName, _firstName, null, this, 'firstName', function setter(o:*):void{_firstName = o as String}) as String;
                em.meta_mergeExternal(src._lastName, _lastName, null, this, 'lastName', function setter(o:*):void{_lastName = o as String}) as String;
                em.meta_mergeExternal(src._salutation, _salutation, null, this, 'salutation', function setter(o:*):void{_salutation = o as Salutation}) as Salutation;
            }
        }

        override public function readExternal(input:IDataInput):void {
            super.readExternal(input);
            if (meta::isInitialized()) {
				_address = input.readObject() as EmbeddedAddress;
                _contacts = input.readObject() as ListCollectionView;
                _firstName = input.readObject() as String;
                _lastName = input.readObject() as String;
                _salutation = Enum.readEnum(input) as Salutation;
            }
        }

        override public function writeExternal(output:IDataOutput):void {
            super.writeExternal(output);
            if (meta::isInitialized()) {
				output.writeObject((_address is IPropertyHolder) ? IPropertyHolder(_address).object : _address);
                output.writeObject((_contacts is IPropertyHolder) ? IPropertyHolder(_contacts).object : _contacts);
                output.writeObject((_firstName is IPropertyHolder) ? IPropertyHolder(_firstName).object : _firstName);
                output.writeObject((_lastName is IPropertyHolder) ? IPropertyHolder(_lastName).object : _lastName);
                output.writeObject((_salutation is IPropertyHolder) ? IPropertyHolder(_salutation).object : _salutation);
            }
        }
    }
}
